package com.toymarket.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.toymarket.dto.ProductInquiryDto;
import com.toymarket.vo.ProductInquiry;
import com.toymarket.vo.ProductReview;
import com.toymarktet.dao.ProductInquiryDao;
import com.toymarktet.dao.ProductReviewDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/product/inquiry/insert")
public class ProductReviewInsertServlet extends HttpServlet {
	
	ProductReviewDao productReviewDao = ProductReviewDao.getInstance();
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		
		int productNo = Integer.parseInt(req.getParameter("productNo"));
		int itemNo = Integer.parseInt(req.getParameter("itemNo"));
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		
		ProductReview productReview = new ProductReview();
		productReview.setTitle(title);
		productReview.setContent(content);
		productReview.setOrderItemNo(itemNo);
		
		productReviewDao.insertReview(productReview);
	}
}

