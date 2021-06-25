package com.toymarket.web;

import java.io.IOException;

import org.apache.commons.codec.digest.DigestUtils;

import com.toymarket.vo.Customer;
import com.toymarktet.dao.UserDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/user/detail")
public class UserDetailServlet extends HttpServlet {

	// GET방식의 /user/detail 요청이 왔을 때 실행되는 메소드 
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/user/detail.jsp").forward(req, resp);
	}
	
	// POST방식의 /user/detail 요청이 왔을 때 실행되는 메소드
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		 //로그인 후 장바구니 이용가능 
		
		Customer userSession = (Customer) session.getAttribute("LOGINED_USER_INFO");
		
		// 폼 입력값을 요청파라미터로 조회
		String id = userSession.getId();
		String name = req.getParameter("name");
		String password = req.getParameter("password");
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");

		// SAMPLE_USERS 테이블에 대한 CRUD 기능이 구현된 UserDao객체를 획득한다.
		UserDao userDao = UserDao.getInstance();
		
		// 비밀번호를 암호화하기
		String sha256Password = DigestUtils.sha256Hex(password);
		
		// User객체를 생성해서 사용자정보를 저장한다.
		Customer user = new Customer();
		user.setId(id);
		user.setName(name);
		user.setPassword(sha256Password);
		user.setEmail(email);
		user.setPhone(phone);
		
		// 사용자 정보를 데이터베이스에 업데이트합니다.
		userDao.updateUserInfo(user);
		
		// 브라우저에게 재요청 URL을 응답으로 보낸다.
		resp.sendRedirect("/home");
	}
}	