package com.company.project.mapper;
import com.company.project.entity.ProjectEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;


/**
 * 
 * 
 * @author wenbin
 * @email *****@mail.com
 * @date 2021-12-21 16:13:31
 */
public interface ProjectMapper extends BaseMapper<ProjectEntity> {
    int update1( ProjectEntity b );
}
