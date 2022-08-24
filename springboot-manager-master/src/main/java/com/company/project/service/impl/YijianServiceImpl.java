package com.company.project.service.impl;

import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import com.company.project.mapper.YijianMapper;
import com.company.project.entity.YijianEntity;
import com.company.project.service.YijianService;


@Service("yijianService")
public class YijianServiceImpl extends ServiceImpl<YijianMapper, YijianEntity> implements YijianService {


    @Override
    public void updateById1(YijianEntity t1) {
      //  t1.setStatues(YijianEntity.getStatues());
        this.updateById(t1);
    }
}