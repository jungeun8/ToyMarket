package com.toymarket.web.order;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.toymarket.dao.order.OrderDao;
import com.toymarket.utils.MyAuthentication;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/order/confirm")
public class OrderConfirmServlet extends HttpServlet {

	OrderDao orderDao = OrderDao.getInstance();
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		
		//front에서 파라미터 받기
//		HttpSession session = req.getSession();
//		User user = (User) session.getAttribute("LOGIN_USER");
		
		//String userId = user.getUserId();
		String orderProductList = req.getParameter("orderProductList");
		String userMail = "3eun7@naver.com";
		String itemCount = "3";
		String userName ="정은";
		
		//orderDao.insertOrder();
		
		//적립금 넣어주기.
		//orderDao.updatePoint(userId, updatePoint);
		
		// 메일발송
		
		// gmail로 보내는 권한 부여 
		Properties props = System.getProperties();
		 props.put("mail.smtp.user", "abpple0405@gmail.com"); 
		  props.put("mail.smtp.host", "smtp.gmail.com");
		  props.put("mail.smtp.port", "465");
		  props.put("mail.smtp.starttls.enable","true");
		  props.put( "mail.smtp.auth", "true");
		  props.put("mail.smtp.debug", "true");
		  props.put("mail.smtp.socketFactory.port", "465"); 
		  props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory"); 
		  props.put("mail.smtp.socketFactory.fallback", "false");  
		  
		  // id, password를 담는다. 
		  Authenticator auth = new MyAuthentication();
		 // 메일 제목, 내용 
		  String subject = "주문이 완료되었습니다^^";
		  String content = "<html><head></head><body><div style=\"margin:20px 10px; max-width:470px\"><div align=\"left\" style=\"text-align:left\"><img src=\"\" alt=\"\" style=\"-ms-interpolation-mode:bicubic; clear:both; display:block; max-width:100%; outline:none; text-decoration:none; width:107px\" width=\"107\" loading=\"lazy\"></div><div style=\"background-color:#FFF; border:1px solid #d3c1e4; color:#a834af; font-size:0.875em; margin:20px 0; word-break:keep-all\" bgcolor=\"#FFFFFF\"><div style=\"padding:30px\"><h1>결제완료 확인서</h1><p align=\"left\" style=\"margin:0; color:#4d4d4d; font-family:Helvetica, Arial, sans-serif; font-weight:normal; line-height:1.3; padding:0; text-align:left; font-size:1em; margin-bottom:20px\">총 "+itemCount+"건 </p><p align=\"left\" style=\"margin:0; color:#4d4d4d; font-family:Helvetica, Arial, sans-serif; font-weight:normal; line-height:1.3; padding:0; text-align:left; font-size:1em; margin-bottom:20px\">"+userName+"님의 주문이 완료되었습니다.</p></div></div></div></body></html>";
		  String fromName = "ToyMarket";
		  
		  // 권한 부여과 id, password를 전달할 연결 통로 
		  Session session = Session.getInstance(props, auth);
		  
		  MimeMessage msg = new MimeMessage(session); 
		  String charSet = "UTF-8";
		  
		  // 전달할 msg에 데이터 넣어주는 것 
		  try {
			  
			msg.setSentDate(new Date());
			InternetAddress from = new InternetAddress();
			from = new InternetAddress(new String(fromName.getBytes(charSet), "8859_1") + "<abpple0405@gmail.com>");
            msg.setFrom(from);
            
            InternetAddress to = new InternetAddress(userMail);
            msg.setRecipient(Message.RecipientType.TO, to);
            msg.setSubject(subject, "UTF-8");
            msg.setText(content, "UTF-8");  
             
            msg.setContent(content,"text/html; charset=UTF-8");
            Transport.send(msg);   
             
            
			
		} catch (AddressException addr_e) {  
			System.out.println("Mail Send FAIL!! 메일을 입력해주세요");
        }catch (MessagingException msg_e) {
        	System.out.println("msg_e : " + msg_e.toString());
        	System.out.println("Mail Send FAIL!! 메일을 제대로 입력해주세요.");
        } catch (UnsupportedEncodingException e) {
        	System.out.println("메일발송을 실패하였습니다. [SYSTEM]");
        }
		req.setAttribute("userName", userName);
		req.setAttribute("itemCount", itemCount);
		req.getRequestDispatcher("/WEB-INF/views/customer/orderConfirm.jsp").forward(req, rep);
		
	}
}