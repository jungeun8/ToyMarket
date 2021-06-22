<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  	<title>상품관리</title>
  	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
 	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  	<style type="text/css">
  		#shopLink {
  			color : blue;
  			font-size: 14px;
  		}
  		#loginInfo {
  			color: black;
  			font-size: 14px;
  		}
  		#sessionInfo {
  			color: black;
  			font-size: 14px;
  		}
  		
  		#headerBorder {
  			border-bottom: 3px solid #5F0080 !important;
  		}
  		#bodyBorder{
  			border-bottom: 2px solid #5F0080 !important;
  		}
  		
  	</style>
</head>
<body>
	<div class="container">
	<%@ include file="../common/adminHeader.jsp" %>
		<main>
			<div class="row">
				<div class="col-3">
					<!-- <nav class="nav flex-column border border-dark border-1 rounded">
  						<span class="navbar-text text-center fs-3">카테고리</span>
  						<a class="nav-link" href="#">전체상품</a>
  						<a class="nav-link" href="#">육류</a>
  						<a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
					</nav> -->
					<table class="table table-light table-hover border">
						<thead>
							<tr>
								<th>카테고리</th>
							</tr>
						</thead>
						<tbody >
						<c:choose>
							<c:when test="${empty categoryName }">등록된 카테고리가 존재하지 않습니다.</c:when>
							<c:otherwise>
								<tr>
								<td>전체상품목록</td>
								</tr>
								<c:forEach var="category" items="${categoryName }" varStatus="loop">
									<tr>
									<td>${category.name }</td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
						</tbody>
					</table>
				</div>
				<div class="col-9">
					<table class="table table-light table-hover table-text text-center align-middle" >
						<thead>
							<tr>
								<th>
								<div class="form-check">
  									<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
  									<label class="form-check-label" for="flexCheckDefault">
    									전체선택
  									</label>
								</div> 
								</th>
								<th>상품번호</th>
								<th>상품이미지</th>
								<th>상품명</th>
								<th>제조사</th>
								<th>판매상태</th>
								<th>재고량</th>
								<th>
								<select>
								<option selected>기본순</option>
								<option value="1">상품명순</option>
								<option value="2">상품번호순</option>
								<option value="3">제조사별</option>
								</select>
								정렬
								</th>
							</tr>
						</thead>
						<tbody class="align-middle">
						<c:choose>
							<c:when test="${empty products }">
								<tr>
									<td colspan="9" class="text-center">등록된 상품이 존재하지 않습니다.</td>
								</tr>
							</c:when>
							<c:otherwise>
							<c:forEach var="products" items="${products }" varStatus="loop">
							<!-- 상품primary키 값으로 상품 디테일 페이지(업데이트)로 보내주기 -->
							<tr>
								<td>
								<div class="form-check">
  									<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
  									<label class="form-check-label" for="flexCheckDefault">
    									선택
  									</label>
								</div>
								</td>
								<td>${products.no }</td>
								<td><img alt="상품이미지" src="${products.image }" style="width : 150px; height : 70px; object-fit: cover;"></td>
								<td><a href="javascript:goToDetail(${products.no })">${products.name }</a></td>
								<td>${products.brand }</td>
								<td>${products.status }</td>
								<td>${products.stock }</td>
								<td>
								<a class="btn btn-outline-danger"  href="/adminproduct/delete?deleteNo=${products.no }">삭제</a>
								</td>
							</tr>
							</c:forEach>
							</c:otherwise>
						</c:choose>
						</tbody>
					</table>
				</div>
			</div>
		</main>
	</div>
</body>
</html>