package com.toymarket.dto;

import java.util.Date;

public class ProductReviewDto {

	private int no;
	private String title;
	private String content;
	private Date createdDate;
	private int itemNo;
	private int productNo;
	
	public ProductReviewDto() {}
	
	public ProductReviewDto(int no, String title, String content, Date createdDate, int itemNo, int productNo) {
		super();
		this.no = no;
		this.title = title;
		this.content = content;
		this.createdDate = createdDate;
		this.itemNo = itemNo;
		this.productNo = productNo;
	}
	
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public int getItemNo() {
		return itemNo;
	}

	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
}
