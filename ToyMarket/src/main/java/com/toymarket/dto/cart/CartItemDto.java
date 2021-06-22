package com.toymarket.dto.cart;

public class CartItemDto {

	private int itemNo;
	private String itemName;
	private int price;
	public int getItemNo() {
		return itemNo;
	}
	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "CartItemDto [itemNo=" + itemNo + ", itemName=" + itemName + ", price=" + price + "]";
	}
	
	
}
