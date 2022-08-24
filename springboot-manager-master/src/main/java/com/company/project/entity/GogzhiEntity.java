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
 * @date 2021-12-20 10:59:08
 */
@Data
@TableName("gogzhi")
public class GogzhiEntity extends BaseEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId("id")
	private String id;

	/**
	 * 员工姓名
	 */
	@TableField("name")
	private String name;

	/**
	 * 
	 */
	@TableField("lisi_project")
	private String lisiProject;

	/**
	 * 评价
	 */
	@TableField("pingjia")
	private String pingjia;

	/**
	 * 工资
	 */
	@TableField("gongzhi")
	private Double gongzhi;

	/**
	 * 
	 */
	@TableField("pingfen")
	private Double pingfen;


}
