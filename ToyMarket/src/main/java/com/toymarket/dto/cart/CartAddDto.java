package com.toymarket.dto.cart;

public class CartAddDto {
	
	private String productNo;
	private String amount;
	private String buyPrice;
	private String userId;

	public CartAddDto() {}

	public CartAddDto(String productNo, String amount, String buyPrice, String userId) {
		super();
		this.productNo = productNo;
		this.amount = amount;
		this.buyPrice = buyPrice;
		this.userId = userId;
	}

	public String getProductNo() {
		return productNo;
	}

	public void setProductNo(String productNo) {
		this.productNo = productNo;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getBuyPrice() {
		return buyPrice;
	}

	public void setBuyPrice(String buyPrice) {
		this.buyPrice = buyPrice;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	
	

}
