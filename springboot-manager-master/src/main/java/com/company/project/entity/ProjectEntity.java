package com.company.project.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
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
 * @date 2021-12-21 16:13:31
 */
@Data
@TableName("project")
public class ProjectEntity extends BaseEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 主建
	 */
	@TableId("id")
	private String id;

	/**
	 * 项目名称
	 */
	@TableField("project_name")
	private String projectName;

	/**
	 * 创建人
	 */
	@TableField("cj_name")
	private String cjName;

	/**
	 * 审核人（主管）
	 */
	@TableField("senhe_name")
	private String senheName;

	/**
	 * 客户姓名
	 */
	@TableField("kehu_name")
	private String kehuName;

	/**
	 * 状态(2：项目通过 1:审核中 0:弃用)
	 */
	@TableField("stutues")
	private Integer stutues;

	/**
	 * 创建时间
	 */
	@TableField(fill = FieldFill.INSERT)
	private Date createTime;

	/**
	 * 更新时间
	 */
	@TableField(fill = FieldFill.INSERT_UPDATE)
	private Date updateTime;

	/**
	 * 文件名
	 */
	@TableField("filename")
	private String filename;
	@TableField("url")
	private String url;

}
