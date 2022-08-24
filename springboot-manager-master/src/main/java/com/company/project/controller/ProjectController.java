package com.company.project.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.company.project.entity.ProjectEntity;
import com.company.project.entity.YijianEntity;
import com.company.project.service.YijianService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.core.metadata.IPage;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import java.util.List;
import com.company.project.common.utils.DataResult;

import com.company.project.service.ProjectService;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


/**
 * 
 *
 * @author wenbin
 * @email *****@mail.com
 * @date 2021-12-21 16:13:31
 */
@Controller
@RequestMapping("/")
public class ProjectController {
    @Autowired
    private ProjectService projectService;
    @Autowired
    private YijianService yijianService;

    /**
    * 跳转到页面
    */
    @RequestMapping({"/index/yijian/tianjia/{id}","/index/t1/project/yijian/tianjia/{id}"})
    @RequiresPermissions("project:yijian")
    public String detailByBid1(@PathVariable("id") String id, Model model) {

        ProjectEntity t2=projectService.getOne(Wrappers.<ProjectEntity>lambdaQuery().eq(ProjectEntity::getId,id));
        YijianEntity t3=yijianService.getOne(Wrappers.<YijianEntity>lambdaQuery().eq( YijianEntity::getName,t2.getProjectName()));
        if(t3!=null){
            return "error/yicunzai";
        }
        if ( t2 ==null) {

            return "error/unfind";
        }
        model.addAttribute("t1", t2);
        return "yijian/list-yijian";


    }
    @RequestMapping({"/index/t1/project/{name}","/index/yijian/tianjia/t1/project/{name}"})

    public String detailByname(@PathVariable("name") String bid, Model model) {


        model.addAttribute("t1",bid);
        return "project/list";


    }
    @RequestMapping("/index/tt/project/{name}")
    public String detailByBid(@PathVariable("name") String bid, Model model) {

        List<ProjectEntity> t2=projectService.list(Wrappers.<ProjectEntity>lambdaQuery().eq(ProjectEntity::getCjName,bid)
                                                                              .eq(ProjectEntity::getStutues,2));

        if ( t2 ==null) {

            return "error/unfind";
        }
        model.addAttribute("t1", t2);
        return "project/t1";


    }
    @GetMapping("/index/project")
    public String project() {
        return "project/list";
        }

    @ApiOperation(value = "新增")
    @PostMapping("project/add")
    @RequiresPermissions("project:add")
    @ResponseBody
    public DataResult add(@RequestBody ProjectEntity project){
        projectService.MYsave(project);
        return DataResult.success();
    }

    @ApiOperation(value = "删除")
    @DeleteMapping("project/delete")
    @RequiresPermissions("project:delete")
    @ResponseBody
    public DataResult delete(@RequestBody @ApiParam(value = "id集合") List<String> ids){
        projectService.removeByIds(ids);
        return DataResult.success();
    }

    @ApiOperation(value = "更新")
    @PutMapping("project/update")
    @RequiresPermissions("project:update")
    @ResponseBody
    public DataResult update(@RequestBody ProjectEntity project){
        projectService.updateById1(project);
        return DataResult.success();
    }

    @ApiOperation(value = "查询分页数据")
    @PostMapping("project/listByPage")
    @RequiresPermissions("project:list")
    @ResponseBody
    public DataResult findListByPage(@RequestBody ProjectEntity project){
        Page page = new Page(project.getPage(), project.getLimit());
        LambdaQueryWrapper<ProjectEntity> queryWrapper = Wrappers.lambdaQuery();
        //查询条件示例
        if (!StringUtils.isEmpty(project.getProjectName())){
            queryWrapper.eq(ProjectEntity::getProjectName, project.getProjectName());}
        if (!StringUtils.isEmpty(project.getCjName())){
            queryWrapper.eq(ProjectEntity::getCjName, project.getCjName());}
       if ( !StringUtils.isEmpty(project.getStutues())){
         queryWrapper.eq(ProjectEntity::getStutues, project.getStutues());}
        if ( !StringUtils.isEmpty(project.getSenheName())){
            queryWrapper.eq(ProjectEntity::getSenheName, project.getSenheName());}
        IPage<ProjectEntity> iPage = projectService.page(page, queryWrapper);
        return DataResult.success(iPage);
    }

}
