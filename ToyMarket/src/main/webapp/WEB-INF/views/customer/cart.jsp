<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>Bootstrap 5 Example</title>
 	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"></link>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
		<link href="../../jhw-css.css" rel="stylesheet" type="text/css"></link>
</head>
<body>
	<div class="container">
		<div id="header">
			<%@ include file="../common/header.jsp"%>
			<!-- search페이지 내 검색 BOX -->
			<div class="text-center" style="height: 100px">
				<div style="margin: 100px auto 50px">
					<h2>장바구니</h2>
				</div>
			</div>
		</div>
<main>
	<div class="row mb-3">
			<div class="col-12">
				<h3 class="border p-3 bg-light"><small>님 장바구니 목록</small></h3>
			</div>
		</div>
		
		<div class="row mb-4">
			<div class="col-12">
				<div class="card">
				<form method="get" action="/order/list" id="cart">
					<div class="card-body pb-0">
						<table class="table">
							<thead>
								<tr>
									<th>선택</th>
									<th>상품</th>
									<th>상품명</th>
									<th>수량</th>
									<th class="text-right">가격</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
							
								<c:forEach var="cartItems" items="${cartItems }" varStatus="loop">
								<tr>
									<td><input type="checkbox" name="itemNo" value="${cartItems.productNo }" /></td>
									<td></td>
									<td>${cartItems.productName }</td>
									<td>${cartItems.amount }</td>
									<td>${cartItems.price }</td>
									<td><a href=""  class="btn btn-danger btn-sm">삭제</a></td>
								</tr>
							</c:forEach>

							
							</tbody>
						</table>
						
						<div class="cart_select"><div class="inner_select"><label class="check">
						<input type="checkbox" name="checkAll" checked=""><span class="ico">
						</span>전체선택</label><a href="#none" class="btn_delete"> 선택삭제 </a></div></div>
						</div>
					</form>
				</div>	
		<div class="row mb-3" style="margin-top:10%">
			<div class="col-6">
				<form method="get" action="/order/list?userid=1001">
						<table class="table">
							<thead>
								<tr>
									<th>상품금액</th>
									<th>540000</th>
								</tr>
								<tr>
									<th>상품할인금액</th>
									<th>12000</th>
								</tr>
								
							</thead>
							<tbody>
								<tr>
									<td>결제예상금액</td>
									<td>540000</td>
								</tr>
								
							</tbody>
						</table>
						</form>
				</div>
			</div>
			
			
			</div>
					<div><button type="submit" class="btn btn-primary" form="cart">주문하기</button></div>
			</div>
			
	
	</main>

</div>

<script>
	function toggleAgreementCheckbox() {
		// 전체 선택/해제 체크박스의 체크여부 조회하기
		var checkboxAllChecked = document.getElementById("checkbox-all").checked;

		var checkboxes = document.querySelectorAll([name='prodNo']);
		for (var i=0; i<checkboxes.length; i++) {
			checkboxes[i].checked = checkboxAllChecked;
		}
	}
</script>

</body>
</html>