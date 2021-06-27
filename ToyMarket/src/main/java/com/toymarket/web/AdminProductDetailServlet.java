package com.toymarket.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.math.NumberUtils;

import com.toymarket.vo.Products;
import com.toymarktet.dao.AdminProductDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/admin/product/detail")
public class AdminProductDetailServlet extends HttpServlet{
	
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		AdminProductDao adminProductDao = AdminProductDao.getInstance();
		
		// 파라미터값 조회
		int productno = NumberUtils.toInt(req.getParameter("no"));
		
	
		
		List<Products> product = adminProductDao.getAllProductsWithCategory(productno);
		req.setAttribute("getAllProductsWithCategory", product);
		
		
		
		
		req.getRequestDispatcher("../../WEB-INF/views/admin/productDetail.jsp").forward(req, resp);
	}
}
