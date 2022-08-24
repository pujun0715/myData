package com.company.project.service.impl;

import com.company.project.common.config.FileUploadProperties;
import com.company.project.common.exception.BusinessException;
import com.company.project.common.utils.DataResult;
import com.company.project.common.utils.DateUtils;
import com.company.project.entity.SysFilesEntity;
import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import com.company.project.mapper.ProjectMapper;
import com.company.project.entity.ProjectEntity;
import com.company.project.service.ProjectService;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;


@Service("projectService")
public class ProjectServiceImpl extends ServiceImpl<ProjectMapper, ProjectEntity> implements ProjectService {
    public String url1=null;
    public String file1Name=null;
    @Resource
    private FileUploadProperties fileUploadProperties;

    @Override
    public DataResult saveFile(MultipartFile file) {
        //存储文件夹
        String createTime = DateUtils.format(new Date(), DateUtils.DATEPATTERN);
        String newPath = fileUploadProperties.getPath() + createTime + File.separator;
        File uploadDirectory = new File(newPath);
        if (uploadDirectory.exists()) {
            if (!uploadDirectory.isDirectory()) {
                uploadDirectory.delete();
            }
        } else {
            uploadDirectory.mkdir();
        }
        try {
            String fileName = file.getOriginalFilename();
            //id与filename保持一直，删除文件
            String fileNameNew = UUID.randomUUID().toString().replace("-", "") + getFileType(fileName);
            String newFilePathName = newPath + fileNameNew;
            String url = fileUploadProperties.getUrl() + "/" + createTime + "/" + fileNameNew;
            //创建输出文件对象
            File outFile = new File(newFilePathName);
            //拷贝文件到输出文件对象
            FileUtils.copyInputStreamToFile(file.getInputStream(), outFile);
            //保存文件记录
            //ProjectEntity sysFilesEntity = new ProjectEntity();
            //sysFilesEntity.setFilename(fileName);
            file1Name=fileName;
           // sysFilesEntity.setFilePath(newFilePathName);
           // sysFilesEntity.setUrl(url);
            url1=url;
            //this.save(sysFilesEntity);
            Map<String, String> resultMap = new HashMap<>();
            resultMap.put("src", url);
            return DataResult.success(resultMap);
        } catch (Exception e) {
            throw new BusinessException("上传文件失败");
        }
    }
    @Override
    public void  MYsave(ProjectEntity project){
        if(file1Name!=null){
            project.setFilename(file1Name);
            file1Name=null;
        }
        if(url1!=null) {
            project.setUrl(url1);
            url1=null;}

        this.save(project);

    }
    @Override
    public void updateById1(ProjectEntity project){

     if(file1Name!=null){
      project.setFilename(file1Name);
         file1Name=null;
     }
     if(url1!=null) {
         project.setUrl(url1);
         url1=null;}

      this.updateById(project);
    }
    private String getFileType(String fileName) {
        if (fileName != null && fileName.contains(".")) {
            return fileName.substring(fileName.lastIndexOf("."));
        }
        return "";
    }
}


