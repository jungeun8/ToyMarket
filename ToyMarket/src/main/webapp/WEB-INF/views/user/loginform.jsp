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
		<div class="row mb-3"> 
			<div class="col-12">
				<h3 class="border p-3 bg-light">마켓컬리 로그인</h3>
			</div>
		</div>
			<div class="row">
			<c:if test="${param.fail eq 'invalid' }">
				<div class="col-6 offset-3">
					<div class="alert alert-danger">
						<strong>아이디 혹은 비밀번호가 일치하지 않습니다.</strong> 
					</div>
				</div>
			</c:if>
			<c:if test="${param.fail eq 'drop' }">
				<div class="col-6 offset-3">
					<div class="alert alert-danger">
						<strong>이미 탈퇴처리된 사용자입니다.</strong> 
					</div>
				</div>
			</c:if>
			<div class="col-6 offset-3">
				<form method="post" action="/user/login" class="border p-3 bg-light">
					<div class="form-group">
						<label>아이디</label>
						<input type="text" class="form-control" id="user-id" name="id" />
						<input type="hidden" id="is-kakao" name="iskakao" value="no"/>
					</div>
					<div class="form-group">
						<label>비밀번호</label>
						<input type="password" class="form-control" id="user-password" name="password" />
					</div>
					<div class="text-right">
						<a href="/user/register" class="btn btn-outline-primary">회원가입</a>
						<button type="submit" class="btn btn-primary">로그인</button>
					</div>
				</form>
			</div>
		</div>
	</main>
</div>
</body>
</html>