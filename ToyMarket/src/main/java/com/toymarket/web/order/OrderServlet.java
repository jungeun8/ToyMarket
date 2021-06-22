package com.toymarket.web.order;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.toymarket.dao.order.OrderDao;
import com.toymarket.dto.cart.CartItemDto;
import com.toymarket.dto.order.OrderListDto;
import com.toymarket.vo.order.OrderItems;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/order/list")
public class OrderServlet extends HttpServlet {
	
	OrderDao orderDao = OrderDao.getInstance();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		
		//front에서 파라미터 받기
//		HttpSession session = req.getSession();
//		User user = (User) session.getAttribute("LOGIN_USER");
		
		// String userId = user.getUserId();                          
		String userId = "1001";
		
		// 프론트에서 선택된 장바구니 아이템의 번호들을 파라미터로 받음 
		String[] itemNoArray = req.getParameterValues("itemNo");
		
		List<CartItemDto> items = new ArrayList<CartItemDto>();
		for(String itemNo : itemNoArray) { // 체크된 상품번호를 이용하여 상품정보를 조회
			items.add(orderDao.getItemDataByItemNo(itemNo));
		}
		
		OrderListDto orderList = orderDao.getOrderList(userId);
		
		
		// 주문페이지에 정보 건네줌
		orderList.setOrderItems(items); //조회한 아이템 정보를을 추가
		req.setAttribute("orderList", orderList);
		
		req.getRequestDispatcher("/WEB-INF/views/customer/order.jsp").forward(req, rep);
		
	}
}