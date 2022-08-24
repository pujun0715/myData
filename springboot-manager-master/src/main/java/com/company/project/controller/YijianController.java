package com.company.project.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
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

import com.company.project.entity.YijianEntity;
import com.company.project.service.YijianService;



/**
 * 
 *
 * @author wenbin
 * @email *****@mail.com
 * @date 2021-12-22 10:19:52
 */
@Controller
@RequestMapping("/")
public class YijianController {
    @Autowired
    private YijianService yijianService;


    /**
    * 跳转到页面
    */
    @GetMapping("/index/yijian")
    public String yijian() {
        return "yijian/list";
        }

    @ApiOperation(value = "新增")
    @PostMapping("yijian/add")
    @RequiresPermissions("yijian:add")
    @ResponseBody
    public DataResult add(@RequestBody YijianEntity yijian){
        yijianService.save(yijian);
        return DataResult.success();
    }

    @ApiOperation(value = "删除")
    @DeleteMapping("yijian/delete")
    @RequiresPermissions("yijian:delete")
    @ResponseBody
    public DataResult delete(@RequestBody @ApiParam(value = "id集合") List<String> ids){
        yijianService.removeByIds(ids);
        return DataResult.success();
    }

    @ApiOperation(value = "更新")
    @PutMapping("yijian/update")
    @RequiresPermissions("yijian:update")
    @ResponseBody
    public DataResult update(@RequestBody YijianEntity yijian){
        yijianService.updateById(yijian);
        return DataResult.success();
    }

    @ApiOperation(value = "查询分页数据")
    @PostMapping("yijian/listByPage")
    @RequiresPermissions("yijian:list")
    @ResponseBody
    public DataResult findListByPage(@RequestBody YijianEntity yijian){
        Page page = new Page(yijian.getPage(), yijian.getLimit());
        LambdaQueryWrapper<YijianEntity> queryWrapper = Wrappers.lambdaQuery();
        //查询条件示例
        //queryWrapper.eq(YijianEntity::getId, yijian.getId());
        if (!StringUtils.isEmpty(yijian.getName())){
            queryWrapper.like(YijianEntity::getName, yijian.getName());}
        if (!StringUtils.isEmpty(yijian.getShenheren())){
            queryWrapper.like(YijianEntity::getShenheren, yijian.getShenheren());}
        if (!StringUtils.isEmpty(yijian.getCjName())){
            queryWrapper.like(YijianEntity::getCjName, yijian.getCjName());}
        IPage<YijianEntity> iPage = yijianService.page(page, queryWrapper);
        return DataResult.success(iPage);
    }

}
