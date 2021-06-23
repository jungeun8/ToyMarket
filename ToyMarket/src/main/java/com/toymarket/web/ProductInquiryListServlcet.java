package com.toymarket.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.google.gson.Gson;
import com.toymarket.dto.ProductInquiryDto;
import com.toymarktet.dao.ProductInquiryDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/product/inquiry/list")
public class ProductInquiryListServlcet extends HttpServlet {
	
	ProductInquiryDao productInquiryDao = ProductInquiryDao.getInstance();
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// XMLHttpRequest가 서버로 보낸 상품번호 조회
		int productNo = Integer.parseInt(req.getParameter("productNo"));
		
		// 상품번호에 해당하는 상품에 포함된 문의리스트 조회
		List<ProductInquiryDto> inquiryList = productInquiryDao.getInquiryListByProductNo(productNo);
		
		// 획득된 문의리스트정보를 JSON 형식의 텍스트로 변환
		Gson gson = new Gson();
		String jsonText = gson.toJson(inquiryList);
		
		// JSON 형식의 텍스트로 변환된 문의리스트정보를 응답으로 보낸다.
		res.setContentType("application/json; charset=utf-8");
		PrintWriter writer = res.getWriter();
		writer.println(jsonText);
	}
}

