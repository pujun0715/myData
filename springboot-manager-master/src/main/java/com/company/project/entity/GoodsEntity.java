package com.company.project.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.TableField;
import com.company.project.entity.BaseEntity;


import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import lombok.Data;

/**
 * 商品管理
 *
 * @author wenbin
 * @email *****@mail.com
 * @date 2021-12-01 22:11:10
 */
@Data
@TableName("goods")
public class GoodsEntity extends BaseEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId("id")
	private String id;

	/**
	 * 商品名
	 */
	@TableField("name")
	private String name;

	/**
	 * 介绍
	 */
	@TableField("intro")
	private String intro;

	/**
	 * 价格
	 */
	@TableField("price")
	private BigDecimal price;

	/**
	 * 数量
	 */
	@TableField("num")
	private Integer num;


}
