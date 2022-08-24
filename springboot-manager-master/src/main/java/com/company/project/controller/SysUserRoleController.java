package com.company.project.controller;

import com.company.project.common.utils.DataResult;
import com.company.project.entity.SysUserRole;
import com.company.project.mapper.SysUserRoleMapper;
import com.company.project.service.SysUserRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import javax.annotation.Resource;

@RestController
@RequestMapping("/sys")
public class SysUserRoleController {
    @Autowired
    private SysUserRoleService t1;
    @RequestMapping("/role_d/{name}")
    public DataResult getHomeInfo(@PathVariable("name") String bid) {

        //通过access_token拿userId
     // String f="1";
        SysUserRole role1=t1.getOne(Wrappers.<SysUserRole>lambdaQuery().eq(SysUserRole::getUserId,bid));
      if(role1!=null){
        DataResult result = DataResult.success();
        result.setData(role1);
          return result;}
        DataResult result = DataResult.fail("为获取到信息");
        return  result;
    }
}
