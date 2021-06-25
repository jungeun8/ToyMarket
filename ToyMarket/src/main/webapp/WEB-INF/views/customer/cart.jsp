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
		<link href="../../resources/css/jhw-css.css?after" rel="stylesheet" type="text/css"></link>
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

		<div class="row mb-3">
			<div class="col-12">
				<h3 class="border p-3 bg-light" style="color:#981098"><small>${user.name }님 장바구니 목록</small></h3>
			</div>
		</div>	
		
		<div class="row mb-4"> 
			<div class="col-12">
				<form method="get" action="/order/list" id="cart">
				<div class="card">
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
								<c:forEach var="item" items="${cartItems }" varStatus="loop">
									<tr>
										<td><input type="checkbox"  id="check-me" class="form-check-input"  name="itemNo" onclick="getCheckboxValue()" value="${item.productNo }" /></td>
										<td><img width= "100px" height= "75px" src="${item.productImage }" alt="${item.productName }"></td>
										<td>${item.productName }</td>
										<td>
										<button  type="button" class="btn btn-info btn-sm" onclick="changeAmount('${item.cartNo}', -1)">-</button>
 										<input type="text" id="item-amount-${item.cartNo }" value="${item.amount }" readonly>
 										<button  type="button" class="btn btn-info btn-sm" onclick="changeAmount('${item.cartNo}', 1)">+</button>
 										</td>
										 <td><span id="item-price"><fmt:formatNumber value="${item.price}"/></span> 원</td>   
										 <td><button type="button" class="btn btn-danger btn-sm"   onclick="removeCheck(${item.cartNo})" >삭제</button></td>
										 <input type="hidden" id="item-discountRate" value ="${item.discountRate }"/>
									</tr>
								</c:forEach>
							</tbody>
						</table>

					
						<div scope="col">
							<input type="checkbox" id="checkbox-all" name="check-all" onclick="toggleAgreementCheckbox()"/>
							<label for="check-all">전체선택</label>
						</div>	
					</div>
				</div>
	
			<div class="row mb-3" style="margin-top:5%">
				<div class="col-6 border p-3 bg-light">
					<table class="table">
						<thead>
							<tr>
								<th>상품금액</th>
							<%-- 	<th><input type="text" style="border:none" value ="${totalPrice }" name="totalPrice" readonly/></th>--%>
								<th><span id="order-price"><fmt:formatNumber value="${totalPrice}"/></span> 원</th>
								
							</tr>
							<tr>
								<th>상품할인금액</th>
								<%-- <th><input type="text" style="border:none" value ="${totalDiscountRate }" name="totalDiscountRate" readonly/></th>--%>
								<th><span id="discount-price"><fmt:formatNumber value="${totalDiscountPrice}"/></span> 원</th>
							</tr>
						</thead>
						<tbody>
							<tr style=" color : #981098;">
								<td>결제예상금액</td>
								<%-- <th><input type="text" style="border:none" value ="${totalPrice-totalDiscountRate }" name="totalDiscountPrice" readonly/></th>--%>
								<th><span id="total-price"><fmt:formatNumber value="${totalDiscountPrice}"/></span> 원</th>
							</tr>
							
						</tbody>
					</table>		
					
				</div>
			</div>
		</form>	

	</div>
</div>
			
			<div class="text-right">
				<button type="button" class="btn btn-primary" onclick="checkForm()">주문하기</button>
			</div>
</div>
	
<script type="text/javascript">
	function toggleAgreementCheckbox() {

		//체크박스로 전체 체크하기 
		var checkboxAllChecked = document.getElementById("checkbox-all").checked;

		var checkboxes = document.querySelectorAll('input[name="itemNo"]');
		for (var i=0; i<checkboxes.length; i++) {
			checkboxes[i].checked = checkboxAllChecked;
		}
 	}
	

	function checkForm() {
	
		// 체크된 체크박스의 길이 가져오기
		var checkMe = document.querySelectorAll('input[name="itemNo"]:checked').length;
		if (checkMe==0) {
			alert("상품을 한 개 이상 선택해 주시기 바랍니다.");
			return;
		}else{
			// 모든 폼 입력값이 유효한 입력값임으로 서버로 제출되게한다.
			document.getElementById("cart").submit();	
		}
	}
	
	function changeAmount(cartNo, val) {
		
		   // 수량 엘리먼트 조회
		   var amountEl = document.getElementById("item-amount-" + cartNo);      // 수량 엘리먼트
		   amountEl.value = parseInt(amountEl.value) + val;

		   if (amountEl.value == 0) {
		      amountEl.value = 1;
		   }

		// 가격, 구매가격 엘리먼트 조회
		   var itemPriceEl = document.getElementById("item-price");   // 가격 엘리먼트
		   var orderPriceEl = document.getElementById("order-price");   // 구매가격 엘리먼트
		   var discountPriceEl = document.getElementById("discount-price");// 구매 할인 가격 엘리먼트
		   var itemDiscountRate = document.getElementById("item-discountRate").value; // 할인가 엘리먼트 
		   var totalPriceEl = document.getElementById("total-price"); // 최종가격
		   

		   // 가격 조회
		   var price = itemPriceEl.textContent.replace(/,/g, '')   // 4,500,000 -> 4500000
		   // 구매가격 계산
		  // var itemPrice = price * amountEl.value;
		   var orderPrice = price * amountEl.value;
		   var discountPrice = (price * itemDiscountRate)* amountEl.value;
		   var totalPrice = (orderPrice - discountPrice);	//  총 구매가격
		
		   
		   // 구매가격을 ,가 포함된 통화표기법으로 변경
		   orderPriceCurrency = new Number(orderPrice).toLocaleString();
		   // 가격 엘리멘트의 내용을 변경 
		//   itemPriceEl.textContent = itemPrice;
		   // 구매가격 엘리먼트의 내용을 변경
		   orderPriceEl.textContent = orderPriceCurrency;
		   // 할인가격 엘리먼트의 내용을 변경
		   discountPriceEl.textContent = discountPrice; // <== 엘리먼트의 텍스트필드에 값을 넣어준다는 뜻 
		   // 총구매가격 엘리먼트의 내용을 변경 
		   totalPriceEl.textConetent = totalPrice;
		}

	
	function removeCheck(no) {
		// 상품삭제시 경고창 
		var result = confirm("정말 삭제하시겠습니까??");
		if (result) {
			location.href = 'delete?cartNo=' + no
		}

	}
	
	

<%--
	
 	function deleteForm(){
		// 상품삭제시 경고창 
		var checkDelete =  document.querySelector("#check-delete").checked;
		if(checkDelete){
			alert("정말 삭제하시겠습니까?");
			window.location="delete?productNo=${cartItems.cartNo }";
		}
		
	} --%>
</script>

</body>
</html>