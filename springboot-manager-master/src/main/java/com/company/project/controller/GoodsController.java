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

import com.company.project.entity.GoodsEntity;
import com.company.project.service.GoodsService;



/**
 * 商品管理
 *
 * @author wenbin
 * @email *****@mail.com
 * @date 2021-12-01 22:11:10
 */
@Controller
@RequestMapping("/")
public class GoodsController {
    @Autowired
    private GoodsService goodsService;


    /**
    * 跳转到页面
    */
    @GetMapping("/index/goods")
    public String goods() {
        return "goods/list1";
        }

    @ApiOperation(value = "新增")
    @PostMapping("goods/add")
    @RequiresPermissions("goods:add")
    @ResponseBody
    public DataResult add(@RequestBody GoodsEntity goods){
        goodsService.save(goods);
        return DataResult.success();
    }

    @ApiOperation(value = "删除")
    @DeleteMapping("goods/delete")
    @RequiresPermissions("goods:delete")
    @ResponseBody
    public DataResult delete(@RequestBody @ApiParam(value = "id集合") List<String> ids){
        goodsService.removeByIds(ids);
        return DataResult.success();
    }

    @ApiOperation(value = "更新")
    @PutMapping("goods/update")
    @RequiresPermissions("goods:update")
    @ResponseBody
    public DataResult update(@RequestBody GoodsEntity goods){
        goodsService.updateById(goods);
        return DataResult.success();
    }

    @ApiOperation(value = "查询分页数据")
    @PostMapping("goods/listByPage")
    @RequiresPermissions("goods:list")
    @ResponseBody
    public DataResult findListByPage(@RequestBody GoodsEntity goods){
        Page page = new Page(goods.getPage(), goods.getLimit());
        LambdaQueryWrapper<GoodsEntity> queryWrapper = Wrappers.lambdaQuery();
        //查询条件示例
        if (!StringUtils.isEmpty(goods.getId())){
            queryWrapper.eq(GoodsEntity::getId, goods.getId());}
        if (!StringUtils.isEmpty(goods.getName())){
            queryWrapper.like(GoodsEntity::getName, goods.getName());}
        IPage<GoodsEntity> iPage = goodsService.page(page, queryWrapper);
        return DataResult.success(iPage);
    }

}
