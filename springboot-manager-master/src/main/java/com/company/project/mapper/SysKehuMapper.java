package com.company.project.mapper;

import com.company.project.entity.SysKehuEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

/**
 * 
 * 
 * @author wenbin
 * @email *****@mail.com
 * @date 2021-12-16 10:51:50
 */
@Mapper
public interface SysKehuMapper extends BaseMapper<SysKehuEntity> {
	@Select("select * from sys_kehu where name=#{bid}")
      SysKehuEntity getByname(String bid);

}
