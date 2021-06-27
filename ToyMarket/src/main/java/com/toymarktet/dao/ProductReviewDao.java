package com.toymarktet.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.toymarket.dto.ProductReviewDto;
import com.toymarket.utils.MybatisUtils;
import com.toymarket.vo.ProductReview;

public class ProductReviewDao {

	private SqlSessionFactory sqlSessionFactory;

	private static ProductReviewDao instance = new ProductReviewDao();

	private ProductReviewDao() {
		this.sqlSessionFactory = MybatisUtils.getSqlSessionFactory();
	}

	public static ProductReviewDao getInstance() {
		return instance;
	}

	public List<ProductReviewDto> getReviewList(Map<String, Object> param) {
		SqlSession session = sqlSessionFactory.openSession();
		List<ProductReviewDto> productReview = session.selectList("productReview.getReviewList", param);
		session.close();
		return productReview;
	}

	public int getTotalRows(Map<String, Object> param) {
		SqlSession session = sqlSessionFactory.openSession();
		int totalRows = session.selectOne("productReview.getTotalRows", param);
		session.close();
		return totalRows;
	}

	public void insertReview(ProductReview review) {
		SqlSession session = sqlSessionFactory.openSession(true);
		session.insert("productReview.insertReview", review);
		session.close();
	}

}
