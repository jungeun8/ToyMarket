package com.toymarket.vo;

import java.util.Date;

public class ProductReview {

	private int no;
	private String title;
	private String content;
	private int likeCount;
	private Date createdDate;
	private int orderItemNo;
	
	public ProductReview() {}

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

	public int getLikeCount() {
		return likeCount;
	}

	public void setLikeCount(int likeCount) {
		this.likeCount = likeCount;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public int getOrderItemNo() {
		return orderItemNo;
	}

	public void setOrderItemNo(int orderItemNo) {
		this.orderItemNo = orderItemNo;
	}
}
