package com.company.project.controller;
import org.springframework.ui.Model;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.core.metadata.IPage;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import java.util.List;
import com.company.project.common.utils.DataResult;
import com.company.project.entity.SysKehuEntity;
import com.company.project.service.SysKehuService;
import org.springframework.web.servlet.ModelAndView;

/**
 * 
 *
 * @author wenbin
 * @email *****@mail.com
 * @date 2021-12-16 10:51:50
 */
@Controller
@RequestMapping("/")
public class SysKehuController {
    @Autowired
    private SysKehuService sysKehuService;

    @RequestMapping("/index/tt/sysKehu12/{name}")

    public String detailByBid(@PathVariable("name") String bid, Model model) {

        SysKehuEntity t2=sysKehuService.getOne(Wrappers.<SysKehuEntity>lambdaQuery().eq(SysKehuEntity::getName,bid));

        if ( t2 ==null) {

            return "error/unfind";
        }
        model.addAttribute("t1", t2);
        return "syskehu/t1";


    }
    @RequestMapping({"/index/t1/project/tt/sysKehu12/{name}","/index/yijian/tianjia/t1/project/tt/sysKehu12/{name}"})

    public String detailekehu(@PathVariable("name") String bid, Model model) {

        SysKehuEntity t2=sysKehuService.getOne(Wrappers.<SysKehuEntity>lambdaQuery().eq(SysKehuEntity::getName,bid));

        if ( t2 ==null) {

            return "error/unfind";
        }
        model.addAttribute("t1", t2);
        return "syskehu/t2";


    }
    /**
    * 跳转到页面
    */
    @GetMapping("/index/sysKehu")
    public String sysKehu() {
        return "syskehu/list";
        }

    @ApiOperation(value = "新增")
    @PostMapping("sysKehu/add")
    @RequiresPermissions("sysKehu:add")
    @ResponseBody
    public DataResult add(@RequestBody SysKehuEntity sysKehu){
        sysKehuService.save(sysKehu);
        return DataResult.success();
    }

    @ApiOperation(value = "删除")
    @DeleteMapping("sysKehu/delete")
    @RequiresPermissions("sysKehu:delete")
    @ResponseBody
    public DataResult delete(@RequestBody @ApiParam(value = "id集合") List<String> ids){
        sysKehuService.removeByIds(ids);
        return DataResult.success();
    }

    @ApiOperation(value = "更新")
    @PutMapping("sysKehu/update")
    @RequiresPermissions("sysKehu:update")
    @ResponseBody
    public DataResult update(@RequestBody SysKehuEntity sysKehu){
        sysKehuService.updateById(sysKehu);
        return DataResult.success();
    }

    @ApiOperation(value = "查询分页数据")
    @PostMapping("sysKehu/listByPage")
    @RequiresPermissions("sysKehu:list")
    @ResponseBody
    public DataResult findListByPage(@RequestBody SysKehuEntity sysKehu){
        Page page = new Page(sysKehu.getPage(), sysKehu.getLimit());
        LambdaQueryWrapper<SysKehuEntity> queryWrapper = Wrappers.lambdaQuery();
        //查询条件示例
        if (!StringUtils.isEmpty(sysKehu.getName())){
        queryWrapper.eq(SysKehuEntity::getName, sysKehu.getName());}
        IPage<SysKehuEntity> iPage = sysKehuService.page(page, queryWrapper);
        return DataResult.success(iPage);
    }

}
