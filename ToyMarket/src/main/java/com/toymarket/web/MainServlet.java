package com.toymarket.web;

import java.io.IOException;
import java.util.List;


import com.toymarket.vo.Products;
import com.toymarktet.dao.ProductDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/home")
public class MainServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.getRequestDispatcher("/WEB-INF/views/customer/index.jsp").forward(request, response);
	}
}
