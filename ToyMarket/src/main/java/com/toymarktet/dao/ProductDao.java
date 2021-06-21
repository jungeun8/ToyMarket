package com.toymarktet.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.toymarket.utils.MybatisUtils;
import com.toymarket.vo.Products;

public class ProductDao {

private SqlSessionFactory sqlSessionFactory;
	
	private static ProductDao instance = new ProductDao();
	private ProductDao() {
		this.sqlSessionFactory = MybatisUtils.getSqlSessionFactory();
	}
	public static ProductDao getInstance() {
		return instance; 
	}
	
	public List<Products> getAllProducts(Map<String, Object> param) {
		SqlSession session = sqlSessionFactory.openSession();
		List<Products> products = session.selectList("products.getAllProducts", param);
		session.close();
		
		return products;
	}
	
	public int getTotalRows(Map<String, Object> param) {
		SqlSession session = sqlSessionFactory.openSession();
		int totalRows = session.selectOne("products.getTotalRows", param);
		session.close();
		return totalRows;
	}
}
