package com.toymarket.web;

import java.io.IOException;

import com.toymarket.vo.Products;
import com.toymarktet.dao.ProductDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/product/detail")
public class ProductDetailServlcet extends HttpServlet {
	
	ProductDao productDao = ProductDao.getInstance();
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int productNo = Integer.parseInt(req.getParameter("productNo"));
		Products product = productDao.getProductDetail(productNo);
		
		req.setAttribute("product", product);
		
		req.getRequestDispatcher("/WEB-INF/views/product/detail.jsp").forward(req, res);
	}
	
	
}

