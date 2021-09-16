package com.toymarket.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.math.NumberUtils;

import com.toymarket.vo.Category;
import com.toymarket.vo.Pagination;
import com.toymarket.vo.Products;
import com.toymarktet.dao.AdminCategoryDao;
import com.toymarktet.dao.AdminProductDao;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/admin/product/list")
public class AdminProductMainServlet extends HttpServlet{
	
	// 1. 한 페이지당 게시글수와 표시할 페이지번호 갯수를 선언한다. 
	// 한 페이지당 표시할 게시글 행의 갯수
	private static final int ROWS_PER_PAGE = 7;
	// 페이지 블록당 한번에 표시할 페이지번호 갯수
	private static final int PAGES_PER_PAGE_BLOCK =5;
	
	private AdminProductDao productdao = AdminProductDao.getInstance();
	private AdminCategoryDao adminCategoryDao = AdminCategoryDao.getInstance();
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 검색조건 조회하기
		String searchOption = req.getParameter("opt");
		String searchKeyword = req.getParameter("keyword");
		
		// 카테고리 번호 조회하기
		int catNo = NumberUtils.toInt(req.getParameter("category"), 0);
		// 페이지 번호 조회하기
		int pageNo = NumberUtils.toInt(req.getParameter("page"),1);
		// 상품 정렬 조회하기
		String sort = req.getParameter("sort");
		
		// SQL 실행에 필요한 파라미터값을 담는 HashMap객체 생성하기
		Map<String, Object> param = new HashMap<String, Object>();
		
		// sort 값이 null 일때 상품번호를 기본으로 설정
		if (sort == null) {
			sort = "상품번호";
		}
		
		//  catNo 0이 아니라면 param변수에 catNo(categoryNO)를 담음
		if (catNo != 0) {
			param.put("catNo", catNo);
		}
		
		// 게시글 조회하기
		// 검색조건이 존재하는 경우 HashMap객체에 추가하기
		if(StringUtils.isNoneBlank(searchOption)
				&& StringUtils.isNoneBlank(searchKeyword)) {
			param.put("opt", searchOption);
			param.put("keyword", searchKeyword);
		}
		// sort값 넣기
		param.put("sort", sort);
		// 조회범위를 HashMap객체에 추가하기
		param.put("beginIndex", (pageNo -1)*ROWS_PER_PAGE + 1);
		param.put("endIndex", pageNo*ROWS_PER_PAGE);
		
		// HashMap객체에 추가된 파라미터값으로 게시글 조회하기
		List<Products> products = productdao.getAllProductsList(param);
		// 조회된 게시글을 요청객체의 속성으로 저장하기
		req.setAttribute("products", products);
		
		// 페이징 처리하기
		// HaSHMAP객체에 추가된 파라미터값으로 게시글 갯수 조회하기
		int totalRows = productdao.getTotalRows(param);
		// 전체페이지 갯수 계산하기
		int totalPages = (int) Math.ceil((double)totalRows/ROWS_PER_PAGE);
		// 전체 페이지블록 갯수 계산하기
		int totalPageBlocks = (int) Math.ceil((double)totalPages/PAGES_PER_PAGE_BLOCK);
		// 요청한 페이지번호가 속하는 페이지블록번호 계산하기
		int currentPageBlock = (int) Math.ceil((double)pageNo/PAGES_PER_PAGE_BLOCK);
		// 현재 페이지블록의 시작페이지 변화 끝 페이지번호를 계산하기
		int beginPage = (currentPageBlock -1)*PAGES_PER_PAGE_BLOCK + 1;
		int endPage = currentPageBlock*PAGES_PER_PAGE_BLOCK;
		if (currentPageBlock == totalPageBlocks) {
			endPage = totalPages;
		}
		
		// 페이징처리에 필요한 정보를 Pagination객체에 저장하기
		Pagination pagination = new Pagination();
		pagination.setPageNo(pageNo);
		pagination.setTotalRows(totalRows);
		pagination.setTotalPages(totalPages);
		pagination.setTotalPageBlocks(totalPageBlocks);
		pagination.setCurrentPageBlock(currentPageBlock);
		pagination.setBeginPage(beginPage);
		pagination.setEndPage(endPage);
		// 요청객체의 속성으로 Pagination객체를 저장하기
		req.setAttribute("pagination", pagination);
		
		List<Category> category = adminCategoryDao.getAllCategories();
		req.setAttribute("category", category);
		
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("../../WEB-INF/views/admin/productMain.jsp");
		requestDispatcher.forward(req, resp);
	}
}
