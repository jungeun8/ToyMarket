<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>상품몰</title>
 	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<header>
		<%@include file="../common/header.jsp" %>
	</header>
	<main>
		<div class="jumbotron">
			<c:if test="${param.success eq 'joinMembership' }">
				<div class="col-6 offset-3">
					<div class="alert alert-danger">
						<h1>회원가입 완료!!</h1>
						<p>로그인 후 마켓컬리를 이용해보세요!</p>
					</div>
				</div>
			</c:if>
			<c:if test="${param.success eq 'withdrawalMembership' }">
				<div class="col-6 offset-3">
					<div class="alert alert-danger">
						<h1>회원탈퇴 완료.</h1>
						<p>그동안 감사했습니다.</p>
					</div>
				</div>
			</c:if>
			
		</div>
	</main>
</div>
</body>
</html>