package com.company.project.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.company.project.entity.SysKehuEntity;

/**
 * 
 *
 * @author wenbin
 * @email *****@mail.com
 * @date 2021-12-16 10:51:50
 */
public interface SysKehuService extends IService<SysKehuEntity> {

    SysKehuEntity getByname(String bid);


}

