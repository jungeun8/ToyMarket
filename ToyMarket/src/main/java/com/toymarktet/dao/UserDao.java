package com.toymarktet.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.toymarket.utils.MybatisUtils;
import com.toymarket.vo.User;


public class UserDao {

	private static UserDao instance = new UserDao();
	private UserDao() {
		this.sqlSessionFactory = MybatisUtils.getSqlSessionFactory();
	}
	
	/**
	 * USER_INFO 테이블에 대한 CRUD기능을 제공하는 UserDao객체를 반환한다.
	 * @return
	 */
	public static UserDao getInstance() {
		return instance;
	}
	
	private SqlSessionFactory sqlSessionFactory;
	
	/**
	 * 새 사용자정보를 전달받아서 USER_INFO 테이블에 추가한다.
	 * @param user 새 사용자 정보
	 */
	public void insertUser(User user) {
		SqlSession session = sqlSessionFactory.openSession(true);
		session.insert("insertUser", user);
		session.close();
	}
	
	/**
	 * 아이디를 전달받아서 USER_INFO 테이블에서 아이디에 해당하는 고객 정보를 찾아서 반환한다.
	 * @param userId 조회할 사용자 아이디
	 * @return 사용자 정보, 아이디에 해당하는 사용자가 존재하지 않을 경우 null값이 반환된다.
	 */
	public User getUserById(String userId) {
		SqlSession session = sqlSessionFactory.openSession();
		User user = session.selectOne("getUserById", userId);
		session.close();
		return user;
	}
	
	/**
	 * 아이디를 전달받아서 USER_INFO 테이블에서 아이디에 해당하는 고객 정보를 찾아서 반환한다.
	 * @param userEmail 조회할 사용자 이메일
	 * @return 사용자 정보, 아이디에 해당하는 사용자가 존재하지 않을 경우 null값이 반환된다.
	 */
	public User getUserByEmail(String userEmail) {
		SqlSession session = sqlSessionFactory.openSession();
		User user = session.selectOne("getUserByEmail", userEmail);
		session.close();
		return user;
	}
	
	/**
	 * 아이디를 전달받아서 USER_INFO 테이블에서 아이디에 해당하는 고객 정보를 찾아서 반환한다.
	 * @param userPhone 조회할 사용자 이메일
	 * @return 사용자 정보, 아이디에 해당하는 사용자가 존재하지 않을 경우 null값이 반환된다.
	 */
	public User getUserByPhone(String userPhone) {
		SqlSession session = sqlSessionFactory.openSession();
		User user = session.selectOne("getUserByPhone", userPhone);
		session.close();
		return user;
	}
	
	/**
	 * 
	 * @return 사용자 정보, 아이디에 해당하는 사용자가 존재하지 않을 경우 null값이 반환된다.
	 */
	public List<User> getAllUsers() {
		SqlSession session = sqlSessionFactory.openSession();
		List<User> user = session.selectList("getAllUsers");
		session.close();
		return user;
	}

	/**
	 * 
	 * @param userId 조회할 사용자 아이디
	 * @return 사용자 정보, 아이디에 해당하는 사용자가 존재하지 않을 경우 null값이 반환된다.
	 */
	public void updateUserInfo(User user) {
		SqlSession session = sqlSessionFactory.openSession(true);
		session.update("updateUserInfo", user);
		session.close();
	}
	
	/**
	 * 
	 * @param userId 조회할 사용자 아이디
	 * @return 사용자 정보, 아이디에 해당하는 사용자가 존재하지 않을 경우 null값이 반환된다.
	 */
	public void deleteUserInfo(String userId) {
		SqlSession session = sqlSessionFactory.openSession(true);
		session.update("deleteUserInfo", userId);
		session.close();
	}
	
	
//	/**
//	 * 
//	 * @param userId 조회할 사용자 아이디
//	 * @return 사용자 정보, 아이디에 해당하는 사용자가 존재하지 않을 경우 null값이 반환된다.
//	 */
//	public void deleteUserInfo(String userId) {
//		SqlSession session = sqlSessionFactory.openSession();
//		session.delete("deleteUserInfo", userId);
//		session.close();
//	}
	
}

