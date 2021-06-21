package com.toymarket.web;

import java.io.IOException;
import java.util.List;

import com.toymarket.vo.Category;
import com.toymarket.vo.Products;
import com.toymarktet.dao.AdminCategoryDao;
import com.toymarktet.dao.AdminProductDao;
import com.toymarktet.dao.ProductDao;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/adminproductmain")
public class AdminProductMainServlet extends HttpServlet{
	
	private AdminProductDao productdao = AdminProductDao.getInstance();
	private AdminCategoryDao adminCategoryDao = AdminCategoryDao.getInstance();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<Products> products = productdao.getAllProductsWithCategory();
		req.setAttribute("products", products);
		
		List<Category> categoryName = adminCategoryDao.getAllCategories();
		req.setAttribute("categoryName", categoryName);
		
		
		
		
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("WEB-INF/views/admin/productMain.jsp");
		requestDispatcher.forward(req, resp);
	}
}
