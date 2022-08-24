package com.company.project.service.impl;

import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import com.company.project.mapper.GogzhiMapper;
import com.company.project.entity.GogzhiEntity;
import com.company.project.service.GogzhiService;


@Service("gogzhiService")
public class GogzhiServiceImpl extends ServiceImpl<GogzhiMapper, GogzhiEntity> implements GogzhiService {


}