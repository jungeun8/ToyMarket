package com.toymarket.web.order;

import java.io.IOException;
import java.net.URLEncoder;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/order/address")
public class AddressServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		// 로그인 후 장바구니 이용가능 
		
		//login student = (Student) session.getAttribute("LOGIN_USER");
		//if (student == null) {
		//	resp.sendRedirect("../login?fail=deny&job=" + URLEncoder.encode("과정신청", "utf-8"));
		//	return;
		//}
		
		
		req.getRequestDispatcher("/WEB-INF/views/api/jusoPopup.jsp").forward(req, rep);
		
	}
}