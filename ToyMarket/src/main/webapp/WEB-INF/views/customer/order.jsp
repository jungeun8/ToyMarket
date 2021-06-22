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
					<h2>주문하기</h2>
				</div>
			</div>
		</div>
	<div id="body">
		<div class="card-body pb-0">
						<table class="table">
							<thead>
								<tr>
									<th colspan="3">주문상품</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach var="order" items="${orderList.orderItems }" varStatus="loop">
								<tr>
									<td>${order.itemName }</td>
									<td>${order.price }</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
						</div>
						

<div class="card-body pb-0">
						<table class="table">
							<thead>
								<tr>
									<th colspan="3">주문자 정보</th>
								</tr>
							</thead>
							<tbody>
							
								<tr>
									<td>보내는 분</td>
									<td>${orderList.address1 }</td>
								</tr>
								<tr>
									<td>휴대폰</td>
									<td>${orderList.address1 }</td>
								</tr>
								<tr>
									<td>이메일</td>
									<td>${orderList.address1 }</td>
								</tr>
							
							</tbody>
						</table>
						</div>
						
						
<div class="card-body pb-0">
						<table class="table">
							<thead>
								<tr>
									<th colspan="4">배송지 정보</th>
								</tr>
							</thead>
							<tbody>
							
								<tr>
									<td>배송지</td>
									<td id="address1">${orderList.address1 }</td>
									<td id="address2">${orderList.address2 }</td>
									<td><button type="button" class="btn btn-primary" onclick="goPopup()">수정</button></td>
								</tr>
							
							</tbody>
						</table>
						</div>
						
						
<div class="card-body pb-0">
						<table class="table">
							<thead>
								<tr>
									<th colspan="3">개인정보 수집/제공</th>
								</tr>
							</thead>
							<tbody>
							
								<tr>
									<td>${order.itemName }</td>
									<td>${order.price }</td>
								</tr>
						
							</tbody>
						</table>
						</div>
						
	<div>
		<button type="button" onclick="location.href='/order/confirm'" class="btn btn-primary">결제하기</button>
	</div>
</div>

	<div id="footer">
		<%@ include file="../common/footer.jsp"%>
	</div>
</div>
<script type="text/javascript">
	
function goPopup(){
	// 주소검색을 수행할 팝업 페이지를 호출합니다.
	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
	var pop = window.open("/order/address","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	
	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}
	
function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
	// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.

	document.getElementById("address1").innerHTML = roadFullAddr;
	document.getElementById("address2").innerHTML = addrDetail;
}

</script>

</body>
</html>