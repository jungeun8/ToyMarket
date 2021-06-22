package com.toymarket.web.cart;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.toymarket.dao.cart.CartDao;
import com.toymarket.dto.cart.CartAddDto;
import com.toymarket.dto.cart.CartItemDto;
import com.toymarket.dto.order.OrderListDto;
import com.toymarket.vo.cart.Cart;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/cart/add")
public class CartAddServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		// 로그인 후 장바구니 이용가능 
		
		//login student = (Student) session.getAttribute("LOGIN_USER");
		//if (student == null) {
		//	resp.sendRedirect("../login?fail=deny&job=" + URLEncoder.encode("과정신청", "utf-8"));
		//	return;
		//}
		
			CartDao cartDao = CartDao.getInstance();
		
	
				//프론트에서 고객의 아이템번호, 수량, 가격을 받는다.
				String productNo = req.getParameter("productNo");
				String amount = req.getParameter("amount");
				String buyPrice = req.getParameter("buyPrice");
				String userId = req.getParameter("userid");
				
				
				//전달받은 파라미터들을 CartAddDto체를 생성하여 넣는다.
				CartAddDto cartAdd = new CartAddDto(productNo, amount, buyPrice, userId );
				
				// cart객체를 dao에게 넘겨준다.
				cartDao.insertCart(cartAdd);
				
				//장바구니 서블을 호출한다.
				
		
				req.getRequestDispatcher("/cart/list?userid="+userId).forward(req, rep);
		
	}
}