package com.company.project.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.company.project.common.utils.DataResult;
import com.company.project.entity.ProjectEntity;
import org.springframework.web.multipart.MultipartFile;

/**
 * 
 *
 * @author wenbin
 * @email *****@mail.com
 * @date 2021-12-21 16:13:31
 */
public interface ProjectService extends IService<ProjectEntity> {


    void updateById1(ProjectEntity project);

    DataResult saveFile(MultipartFile file);

    void MYsave(ProjectEntity project);
}

