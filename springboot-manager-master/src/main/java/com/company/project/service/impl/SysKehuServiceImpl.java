package com.company.project.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.google.common.annotations.VisibleForTesting;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import com.company.project.mapper.SysKehuMapper;
import com.company.project.entity.SysKehuEntity;
import com.company.project.service.SysKehuService;


import java.util.List;


@Service("sysKehuService")
public class SysKehuServiceImpl extends ServiceImpl<SysKehuMapper, SysKehuEntity> implements SysKehuService {

    @Override
    public SysKehuEntity getByname(String bid) {
        return this.getById(bid);
    }
    public static void main(String[] args){

        SysKehuServiceImpl t1 = new SysKehuServiceImpl();
//        List<SysKehuEntity> list = t1.lambdaQuery().eq(SysKehuEntity::getId, "1472755428852178945").list();
//        list.forEach(System.out::println);

   //   SysKehuEntity t2= t1.getOne(Wrappers.<SysKehuEntity>lambdaQuery().eq(SysKehuEntity::getName,2),false);
///        SysKehuEntity t2=t1.getOne(Wrappers.<SysKehuEntity>lambdaQuery().eq(SysKehuEntity::getName,2));
      //  System.out.println( t2);
    }

}

