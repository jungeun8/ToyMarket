package com.toymarket.web;

import java.io.IOException;
import java.util.List;

import org.apache.commons.codec.digest.DigestUtils;

import com.toymarket.vo.User;
import com.toymarktet.dao.UserDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/user/register")
public class RegisterServlet extends HttpServlet {

	// GET방식의 /register 요청이 왔을 때 실행되는 메소드 
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/user/registerform.jsp").forward(req, resp);
	}
	
	// POST방식의 /register 요청이 왔을 때 실행되는 메소드
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 폼 입력값을 요청파라미터로 조회
		String id = req.getParameter("id");
		String password = req.getParameter("password");
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		
		// 카카오 사용자의 경우 패스워드를 안받기때문에 id와 name값을 받아서 registerform로 넘어감
		if (password == null) {
			req.getRequestDispatcher("/WEB-INF/views/user/registerform.jsp?id="+id+"&name="+name).forward(req, resp);
		}
		
		// SAMPLE_USERS 테이블에 대한 CRUD 기능이 구현된 UserDao객체를 획득한다.
		UserDao userDao = UserDao.getInstance();
		
		User savedUser = userDao.getUserById(id);
		
		List<User> allUser = userDao.getAllUsers();
		
//		for (User users : allUser) {
//			if (users.getId().equals(id)) {
//				resp.sendRedirect("/user/register?fail=idoverlap");
//			}
//			else if (users.getEmail().equals(email)) {
//				resp.sendRedirect("/user/register?fail=emailoverlap");
//			} 
//		}	
		// 가입하려는 아이디가 이미 있을때
		if (savedUser != null) {
			resp.sendRedirect("/user/register?fail=idoverlap");
		}
		
		// 가입하려는 이메일이 이미 있을때
//		if (savedUser != null) {
//			resp.sendRedirect("/user/register?fail=emailoverlap");
//		}
		
		// 비밀번호를 암호화하기
		String sha256Password = DigestUtils.sha256Hex(password);
		
		// User객체를 생성해서 사용자정보를 저장한다.
		User user = new User();
		user.setId(id); 
		user.setPassword(sha256Password);
		user.setName(name);
		user.setEmail(email);
		user.setPhone(phone);
		
		// 사용자 정보를 데이터베이스에 저장합니다.
		userDao.insertUser(user);
		
		// 브라우저에게 재요청 URL을 응답으로 보낸다.
		resp.sendRedirect("/result?success=joinMembership");
	}
}
