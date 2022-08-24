package com.company.project.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.company.project.entity.YijianEntity;

/**
 * 
 *
 * @author wenbin
 * @email *****@mail.com
 * @date 2021-12-22 10:19:52
 */
public interface YijianService extends IService<YijianEntity> {
    void updateById1(YijianEntity project);
}

