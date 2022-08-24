package com.company.project.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.company.project.entity.GoodsEntity;
import com.company.project.entity.SysUserRole;
import com.company.project.mapper.GoodsMapper;
import com.company.project.mapper.SysUserRoleMapper;
import com.company.project.service.GoodsService;
import com.company.project.service.SysUserRoleService;
import org.springframework.stereotype.Service;


@Service("sysUserRoleService")
public class SysUserRoleServiceImpl extends ServiceImpl<SysUserRoleMapper, SysUserRole> implements SysUserRoleService {


}