package com.toymarktet.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.toymarket.utils.MybatisUtils;
import com.toymarket.vo.Products;

public class AdminProductDao {

private SqlSessionFactory sqlSessionFactory;
	
	private static AdminProductDao instance = new AdminProductDao();
	private AdminProductDao() {
		this.sqlSessionFactory = MybatisUtils.getSqlSessionFactory();
	}
	public static AdminProductDao getInstance() {
		return instance; 
	}
	
	public List<Products> getAllProductsWithCategory() {
		SqlSession session = sqlSessionFactory.openSession();
		List<Products> products = session.selectList("getAllProductsWithCategory");
		session.close();
		
		return products;
	}
	
	public List<Products> deleteProductsbyNo(int deleteNo){
		SqlSession session = sqlSessionFactory.openSession(true);
		List<Products> deleteProducts = session.selectList("deleteById", deleteNo);
		session.close();
		return deleteProducts;
	}
	

}
