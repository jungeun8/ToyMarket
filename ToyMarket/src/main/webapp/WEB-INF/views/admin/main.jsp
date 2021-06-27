<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  	<title>관리자페이지</title>
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
	<c:choose>
		<c:when test="${empty LOGINED_USER_INFO }">
			<div class="col-6 offset-3">
				<div class="alert alert-danger">
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
				<h1>관리자 로그인 필요!!</h1>
				<p>로그인 후 이용가능합니다.</p>
				<input type="hidden" id="is-admin" name="isadmin" value="yes"/>
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
			</div>
		</c:when>	
	<c:otherwise>

<body>
	<div class="container">
	<%@ include file="../common/adminHeader.jsp" %>
		<main>
			<div>
				<div class="border-bottom" id="bodyBorder">
					<h2>상품분석</h2>
				</div>
			</div>
			<div class="row mt-3 mb-5 ">
				<div class="col-4 d-flex justify-content-start">
					<h3>차트1</h3>
				</div>		
				<div class="col-4 d-flex justify-content-center">
					<h3>차트2</h3>
				</div>		
				<div class="col-4 d-flex justify-content-end">
					<h3>차트3</h3>
				</div>		
			</div>
			<div class="border-bottom" id="bodyBorder">
				<h2>고객분석</h2>
			</div>
			<div class="row mt-3">
				<div class="col-6 d-flex justify-content-around">
					<h3>차트1</h3>
				</div>
				<div class="col-6 d-flex justify-content-around">
					<h3>차트2</h3>
				</div>
			</div>
		</main>
	</div>
</body>
	</c:otherwise>
</c:choose>	
</html>
