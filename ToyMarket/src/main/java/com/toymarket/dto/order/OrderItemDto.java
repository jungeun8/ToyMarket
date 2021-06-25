package com.toymarket.dto.order;

public class OrderItemDto {
	
	int cartNo;
	int orderNo;
	
	public OrderItemDto() {}

	public OrderItemDto(int cartNo, int orderNo) {
		super();
		this.cartNo = cartNo;
		this.orderNo = orderNo;
	}

	public int getCartNo() {
		return cartNo;
	}

	public void setCartNo(int cartNo) {
		this.cartNo = cartNo;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	
	

}
