package com.company.project.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.TableField;
import com.company.project.entity.BaseEntity;


import java.io.Serializable;
import java.util.Date;

import lombok.Data;

/**
 * 
 *
 * @author wenbin
 * @email *****@mail.com
 * @date 2021-12-22 10:19:52
 */
@Data
@TableName("yijian")
public class YijianEntity extends BaseEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * id
	 */
	@TableId("id")
	private String id;

	/**
	 * 项目名称
	 */
	@TableField("name")
	private String name;

	/**
	 * 修改意见
	 */
	@TableField("jianyi")
	private String jianyi;

	/**
	 * 员工名
	 */
	@TableField("cj_name")
	private String cjName;

	/**
	 * 进度(1:待处理 0:已修改)
	 */
	@TableField("shenheren")
	private String shenheren;
	@TableField("statues")
	private Integer statues;


}
