package com.toymarket.vo.order;

import java.util.Date;
import java.util.List;

public class Order {
	
	private int orderNo;
	private int orderPrice;
	private int totalAmount;
	private int usedPoint;
	private int totalPrice;
	private int depositePoint;
	private String status;
	private Date createdDate;
	private int customerNo;
	private String address1;
	private String address2;
	private List<OrderItems> orderList;
	
	public Order() {}

	public Order(int orderNo, int orderPrice, int totalAmount, int usedPoint, int totalPrice, int depositePoint,
			String status, Date createdDate, int customerNo, String address1, String address2, List<OrderItems> orderList) {
		super();
		this.orderNo = orderNo;
		this.orderPrice = orderPrice;
		this.totalAmount = totalAmount;
		this.usedPoint = usedPoint;
		this.totalPrice = totalPrice;
		this.depositePoint = depositePoint;
		this.status = status;
		this.createdDate = createdDate;
		this.customerNo = customerNo;
		this.address1 = address1;
		this.address2 = address2;
		this.orderList = orderList;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public int getOrderPrice() {
		return orderPrice;
	}

	public void setOrderPrice(int orderPrice) {
		this.orderPrice = orderPrice;
	}

	public int getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(int totalAmount) {
		this.totalAmount = totalAmount;
	}

	public int getUsedPoint() {
		return usedPoint;
	}

	public void setUsedPoint(int usedPoint) {
		this.usedPoint = usedPoint;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public int getDepositePoint() {
		return depositePoint;
	}

	public void setDepositePoint(int depositePoint) {
		this.depositePoint = depositePoint;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getcreatedDate() {
		return createdDate;
	}

	public void setcreatedDatee(Date createdDate) {
		this.createdDate = createdDate;
	}

	public int getCustomerNo() {
		return customerNo;
	}

	public void setCustomerNo(int customerNo) {
		this.customerNo = customerNo;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public List<OrderItems> getOrderList() {
		return orderList;
	}

	public void setOrderList(List<OrderItems> orderList) {
		this.orderList = orderList;
	}

	@Override
	public String toString() {
		return "Order [orderNo=" + orderNo + ", orderPrice=" + orderPrice + ", totalAmount=" + totalAmount
				+ ", usedPoint=" + usedPoint + ", totalPrice=" + totalPrice + ", depositePoint=" + depositePoint
				+ ", status=" + status + ", date=" + createdDate + ", customerNo=" + customerNo + ", address1=" + address1
				+ ", address2=" + address2 + ", orderList=" + orderList + "]";
	}

	
	
	

}
