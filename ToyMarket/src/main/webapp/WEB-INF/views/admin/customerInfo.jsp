<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
 	 <title>Bootstrap 4 Example</title>
 	 <meta charset="utf-8">
 	 <meta name="viewport" content="width=device-width, initial-scale=1">
 	 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css">
 	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 	 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
 	 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
 	 <style type="text/css">
 	 	#formBorder{
 	 		border-bottom: 3px solid #000 !important;
 	 	}
 	 	#formBorder2{
 	 		border-bottom: 1px solid #000 !important;
 	 	}
 	 	#formBorder3{
 	 		border-bottom: 2px solid #000 !important;
 	 	}
 	 	
 	 	input[type='radio'] {
        	-webkit-appearance: none;
        	width: 20px;
        	height: 20px;
        	border-radius: 50%;
        	outline: none;
        	border: 2px solid gray;
    	}
    	input[type='radio']:before {
        	content: '';
        	display: block;
        	width: 60%;
       		height: 60%;
        	margin: 20% auto;
        	border-radius: 50%;
    	}
 		input[type="radio"]:checked:before {
        	background: #5F0080;
        
    	}
    	input[type="radio"]:checked {
      		border-color:#5F0080;
    	}
    	
    	h4{
    		 font-weight: bolder;
    	}
    	
    	#button{
    		border: 2px solid #5F0080; 
    		font-weight: bolder; 
    		color: #5F0080;
    	}
 	 	
 	 	
 	 </style>
</head>
<body>
<div class="container">
	<%@include file="../common/adminHeader.jsp" %>
	<div class="row mb-3" id="formBorder">
		<div class="col-12">
			<div class="p-3">
				<h4>회원정보조회</h4>
			</div>
		</div>
	</div>
	<div class="row mb-4">
		<div class="col-12">
			<form id="form-search" method="get" action="admincustomerinfo">					<!-- 만들고 post방식으로도 해보기 -->
				<input type="hidden" name="no" value="" />
				<input type="hidden" name="page" value="${pagination.pageNo }" />
				<div class="row mb-3" id="formBorder2">
					<div class="col-6 p-3">		<!-- 왼쪽 이름, 나이 -->
						<div class="mb-3 row">		<!--  이름 열 -->
							<div class="col-1"></div>
							<label class="col-sm-2 col-form-label">이름</label>
    						<div class="col-sm-6">
      							<input type="text" class="form-control" id="customer-name" name="name">
    						</div>
    						<div class="col-3"></div>
						</div>
						<div class="mb-3 row">		<!-- 나이 열 -->
							<div class="col-1"></div>
							<label class="col-sm-2 col-form-label">나이</label>
    						<div class="col-sm-2">
      							<input type="text" class="form-control" id="customer-fage" name="fage">
    						</div>
    						<label class="col-sm-1 col-form-label">~</label>
    						<div class="col-sm-2">
      							<input type="text" class="form-control" id="customer-age" name="sage">
    						</div>
    						<label class="col-sm-4 col-form-label">세</label>
						</div>
					</div>
					<div class="col-6 p-3">		<!-- 오른쪽 아이디, 성별 -->
						<div class="mb-3 row">		<!--  아이디 열 -->
							<div class="col-1"></div>
							<label class="col-sm-2 col-form-label">아이디</label>
    						<div class="col-sm-6">
      							<input type="text" class="form-control" id="customer-id" name="id">
    						</div>
    						<div class="col-3"></div>
						</div>
						<div class="mb-3 row">		<!--  성별 열 -->
							<div class="col-1"></div>
							<label class="col-sm-2 col-form-label">성별</label>
    						<div class="col-sm-9 p-2">
      							<div class="form-check form-check-inline">
  									<input type="radio" name="gender" value="남자">
  									<label class="form-check-label" for="inlineRadio1">남자</label>
								</div>
								<div class="form-check form-check-inline">
  									<input type="radio" name="gender" value="여자">
  									<label class="form-check-label" for="inlineRadio2">여자</label>
								</div>
								<div class="form-check form-check-inline">
  									<input type="radio" name="gender" value="" checked>
  									<label class="form-check-label" for="inlineRadio3">상관없음</label>
								</div>
    						</div>
						</div>
					</div>
				</div>
				<div class="mb-3 p-3" style="text-align:center;">
					<button type="button" class="btn btn-lg" style="background-color: #5F0080; color: white;" onclick="submitForm()"> 조회</button>
				</div>
			</form>
		</div>
	</div>
	<div class="row p-2" id="formBorder3">
		<div class="col-10 p-3">
		<h4>회원목록</h4>
		</div>
		<div class="col-2 p-3">
		<a href="" class="btn btn-sm float-end" id="button">전체 리스트</a>
		</div>
	</div>
	<div class="row mt-4">
		<div class="col-12">
			<div class="border p-2">
				
				<table class="table" id="customer-table">
					<colgroup>
						<col width="9%">
						<col width="15%">
						<col width="20%">
						<col width="20%">
						<col width="13%">
						<col width="15%">
						<col width="*%">
					</colgroup>
					<thead>
						<tr>
							<th>선택</th>
							<th>번호</th>
							<th>등록일</th>
							<th>생년월일</th>
							<th>이름</th>
							<th>아이디</th>
							<th>성별</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${empty customers }">
								<tr>
									<td class="text-center" colspan="7">검색결과가 없습니다.</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach var="customer" items="${customers }">
									<tr>
										<td><input type="checkbox" name="customerNo" value="${customer.no }" /></td>
										<td><a href="javascript:goToDetail(${customer.no })">${customer.no }</a></td>
										<td><fmt:formatDate value="${customer.createdDate }" pattern="yyyy-MM-dd"/></td>
										<td>${customer.birth }</td>
										<td>${customer.name }</td>
										<td>${customer.id }</td>
										<td>${customer.gender }</td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<c:if test="${pagination.totalRows gt 0 }">
		<div class="row">
			<div class="col-12">
				<ul class="pagination justify-content-center">
					<li class="page-item ${pagination.pageNo le 1 ? 'disabled' : '' }">
						<a class="page-link" href="javascript:goToPage(${pagination.pageNo - 1 })">이전</a>
					</li>
					<c:forEach var="num" begin="${pagination.beginPage }" end="${pagination.endPage }">
						<li class="page-item ${pagination.pageNo eq num ? 'active' : '' }">
							<a class="page-link" href="javascript:goToPage(${num })">${num }</a>
						</li>
					</c:forEach>
					<li  class="page-item ${pagination.pageNo ge pagination.totalPages ? 'disabled' : '' }">
						<a class="page-link" href="javascript:goToPage(${pagination.pageNo + 1 })">다음</a>
					</li>
				</ul>
			</div>
		</div>
	</c:if>
</div>
<script type="text/javascript">
	function submitForm() {
		var text1 = document.querySelector("input[name='name']").value;
		var text2 = document.querySelector("input[name='id']").value;
		var text3 = document.querySelector("input[name='fage']").value;
		var text4 = document.querySelector("input[name='sage']").value;
		var text5 = document.querySelector("input[name='gender']").value;	// 값이 상관없음일때 값이 무엇인지 알아보기
		
		if (!text1 && !text2 && !text3 && !text4) {
			alert("검색어를 입력하세요")
			document.querySelector("input[name='name']").focus();
			return;
		}
		document.querySelector("input[name='page']").value = 1;
		document.querySelector("#form-search").submit();
	}
	
	function goToPage(pageNo) {
		var text1 = document.querySelector("input[name='name']").value;
		var text2 = document.querySelector("input[name='id']").value;
		var text3 = document.querySelector("input[name='fage']").value;
		var text4 = document.querySelector("input[name='sage']").value;
		var text5 = document.querySelector("input[name='gender']").value;	// 값이 상관없음일때 값이 무엇인지 알아보기
		
		if (!text1 && !text2 && !text3 && !text4) {
			document.querySelector("input[name='name']").disabled = true;
			document.querySelector("input[name='id']").disabled = true;
			document.querySelector("input[name='fage']").disabled = true;
			document.querySelector("input[name='sage']").disabled = true;
			document.querySelector("input[name='geder']").disabled = true;
		}
		document.querySelector("input[name='no']").disabled = true;
		document.querySelector("input[name='page']").value = pageNo;
		document.querySelector("#form-search").setAttribute("action", "admincustomerinfo");
		document.querySelector("#form-search").submit();
	}
	
	function goToDetail(customerNo) {
		var text1 = document.querySelector("input[name='name']").value;
		var text2 = document.querySelector("input[name='id']").value;
		var text3 = document.querySelector("input[name='fage']").value;
		var text4 = document.querySelector("input[name='sage']").value;
		var text5 = document.querySelector("input[name='gender']").value;	// 값이 상관없음일때 값이 무엇인지 알아보기
		
		if (!text1 && !text2 && !text3 && !text4) {
			document.querySelector("input[name='name']").disabled = true;
			document.querySelector("input[name='id']").disabled = true;
			document.querySelector("input[name='fage']").disabled = true;
			document.querySelector("input[name='sage']").disabled = true;
			document.querySelector("input[name='geder']").disabled = true;
		}
		
		document.querySelector("input[name='no']").value = customerNo;
		document.querySelector("#form-search").setAttribute("action", "admincustomerdetail");
		document.querySelector("#form-search").submit();
	}
	

</script>
</body>
</html>