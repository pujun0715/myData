package com.company.project.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.core.metadata.IPage;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import java.util.List;
import com.company.project.common.utils.DataResult;

import com.company.project.entity.GogzhiEntity;
import com.company.project.service.GogzhiService;



/**
 * 
 *
 * @author wenbin
 * @email *****@mail.com
 * @date 2021-12-20 10:59:08
 */
@Controller
@RequestMapping("/")
public class GogzhiController {
    @Autowired
    private GogzhiService gogzhiService;


    /**
    * 跳转到页面
    */
    @GetMapping("/index/gogzhi")
    public String gogzhi() {
        return "gogzhi/list";
        }

    @ApiOperation(value = "新增")
    @PostMapping("gogzhi/add")
    @RequiresPermissions("gogzhi:add")
    @ResponseBody
    public DataResult add(@RequestBody GogzhiEntity gogzhi){
        gogzhiService.save(gogzhi);
        return DataResult.success();
    }

    @ApiOperation(value = "删除")
    @DeleteMapping("gogzhi/delete")
    @RequiresPermissions("gogzhi:delete")
    @ResponseBody
    public DataResult delete(@RequestBody @ApiParam(value = "id集合") List<String> ids){
        gogzhiService.removeByIds(ids);
        return DataResult.success();
    }

    @ApiOperation(value = "更新")
    @PutMapping("gogzhi/update")
    @RequiresPermissions("gogzhi:update")
    @ResponseBody
    public DataResult update(@RequestBody GogzhiEntity gogzhi){
        gogzhiService.updateById(gogzhi);
        return DataResult.success();
    }

    @ApiOperation(value = "查询分页数据")
    @PostMapping("gogzhi/listByPage")
    @RequiresPermissions("gogzhi:list")
    @ResponseBody
    public DataResult findListByPage(@RequestBody GogzhiEntity gogzhi){
        Page page = new Page(gogzhi.getPage(), gogzhi.getLimit());
        LambdaQueryWrapper<GogzhiEntity> queryWrapper = Wrappers.lambdaQuery();
        //查询条件示例
        //queryWrapper.eq(GogzhiEntity::getId, gogzhi.getId());
        if (!StringUtils.isEmpty(gogzhi.getName())){
            queryWrapper.like(GogzhiEntity::getName, gogzhi.getName());}
        IPage<GogzhiEntity> iPage = gogzhiService.page(page, queryWrapper);
        return DataResult.success(iPage);
    }

}
