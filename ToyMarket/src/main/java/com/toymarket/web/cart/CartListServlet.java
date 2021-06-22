package com.toymarket.web.cart;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.toymarket.dao.cart.CartDao;
import com.toymarket.dto.cart.CartItemDto;
import com.toymarket.vo.User;
import com.toymarket.vo.cart.Cart;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/cart/list")
public class CartListServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		
		//front에서 파라미터 받기
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("LOGINED_USER_INFO");
		if (user == null) { // 만약로그인이 안되어있다면 그아래에 sendRedirect가 로그인안되어있음
			rep.sendRedirect("/user/login");
			return;
		}
		
		
		CartDao cartDao = CartDao.getInstance();
		
		

		//프론트에서 고객의 아이디를 받는다.
		String userId = user.getId();

		
		// 아이템들을 담을 변수를 생성한다.
		List<Cart> cartItems = new ArrayList<Cart>();
		
		// 고객의 아이디를 dao에 전달하여 아이템목록을 받는다.
		cartItems = cartDao.getCartByUserNo(userId);
		
		// 해당 변수를 프론트에 넘겨준다.
		req.setAttribute("cartItems", cartItems);
				
		
		
		req.getRequestDispatcher("/WEB-INF/views/customer/cart.jsp").forward(req, rep);	
		
	}
}