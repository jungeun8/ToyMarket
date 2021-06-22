<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>상품몰</title>
 	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link href="../../resources/css/jhw-css.css" rel="stylesheet" type="text/css"></link>
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
	<header>
		<%@include file="../common/header.jsp" %>
	</header>
	<main>
<!-- 		<div class="row mb-3">  -->
<!-- 			<div class="col-12"> -->
<!-- 				<h3 class="border p-3 bg-light">마켓컬리 회원가입</h3> -->
<!-- 			</div> -->
<!-- 		</div> -->
<%-- 			<c:if test="${param.fail eq 'idoverlap' }"> --%>
<!-- 				<div class="col-6 offset-3"> -->
<!-- 					<div class="alert alert-danger"> -->
<!-- 						<strong>이미 사용중인 아이디 입니다.</strong>  -->
<!-- 					</div> -->
<!-- 				</div> -->
<%-- 			</c:if> --%>
<%-- 			<c:if test="${param.fail eq 'emailoverlap' }"> --%>
<!-- 				<div class="col-6 offset-3"> -->
<!-- 					<div class="alert alert-danger"> -->
<!-- 						<strong>이미 사용중인 이메일 입니다.</strong>  -->
<!-- 					</div> -->
<!-- 				</div> -->
<%-- 			</c:if> --%>
		<div class="row">
			<div class="col-12">
				<form id="register-form" action="register" method="post" class="border p-3 bg-light">
					<div class="form-group">
					<!-- 카카오로 타고 들어왔을때 블럭 처리 -->
						<label>아이디</label>
						<input type="text" class="form-control" id="user-id" name="id" value="${param.id}"/>
					</div>
					<div class="form-group">
					<!-- 카카오로 타고 들어왔을때 블럭 처리 -->
						<label>이름</label>
						<input type="text" class="form-control" id="user-name" name="name" value="${param.name}" />
					</div>
					<div class="form-group">
						<label>이메일</label>
						<input type="email" class="form-control" id="user-email" name="email" />
					</div>
					<div class="form-group">
						<label>비밀번호</label>
						<input type="password" class="form-control" id="user-pwd" name="password" />
					</div>
					<div class="form-group">
						<label>비밀번호 확인</label>
						<input type="password" class="form-control" id="user-pwd-confirm" name="passwordConfirm" />
					</div>
					<div class="form-group">
						<label>전화번호</label>
						<input type="text" onKeyup="this.value=this.value.replace(/[^0-9]/g,'')" 
								class="form-control" id="user-phone" name="phone" />
					</div>
					<div class="form-group form-check">
						<input type="checkbox" class="form-check-input" id="check-me">
						<label class="form-check-label">개인정보 제공 동의</label>
					</div>
					<div class="text-right">
						<a href="../index.jsp" class="btn btn-secondary">취소</a>
						<button type="button" class="btn btn-primary" onclick="checkForm()">등록</button>
					</div>
				</form>
			</div>
		</div>
	</main>
	</div>
	
	<script type="text/javascript">
		function checkForm() {
			// 아이디 입력필드의 유효성 체크하기

// 			var fail = request.getParameter("fail");
// 			if ("fail".equals(idoverlap)) {
// 				alert("이미 사용중인 아이디 입니다.");
// 				userIdEl.value = "";
// 				userIdEl.focus();
// 				return;
// 			}
// 			var userIdEl= document.getElementById("user-id");
// 			if (userIdEl.value = 서버의 유저id) {
// 				alert("이미 사용중인 아이디 입니다.");
// 				userIdEl.value = "";
// 				userIdEl.focus();
// 				return;
// 			}
			var userIdEl= document.getElementById("user-id");	
			if (!userIdEl.value.trim()) { 
				alert("아이디는 필수입력값입니다.");
				userIdEl.focus();
				return;
			}
			if (userIdEl.value.trim().length < 4) {
				alert("아이디는 4글자 이상으로 입력해야 합니다.");
				userIdEl.focus();
				return;
			}
			if (!/^[a-zA-Z0-9]+$/.test(userIdEl.value.trim())) {
				alert("아이디는 영어대소문자,숫자만 허용됩니다.");
				userIdEl.focus();
				return;
			}
			var userEmailEl= document.getElementById("user-name");	
			if (!userEmailEl.value.trim()) { 
				alert("이름은 필수입력값입니다.");
				userEmailEl.focus();
				return;
			}
			var userEmailEl= document.getElementById("user-email");	
			if (!userEmailEl.value.trim()) { 
				alert("이메일은 필수입력값입니다.");
				userEmailEl.focus();
				return;
			}
// 			var userIdEl= document.getElementById("user-email");
// 			if (userIdEl.value = 서버의 user-email) {
// 				alert("이미 사용중인 이메일 입니다.");
// 				userEmailEl.value = "";
// 				userEmailEl.focus();
// 				return;
// 			}
			var passwordEl = document.getElementById("user-pwd");
			var passwordConfirmEl = document.getElementById("user-pwd-confirm");
			if (passwordEl.value != passwordConfirmEl.value) {
				alert("비밀번호가 서로 일치하지 않습니다.");
				passwordConfirmEl.value = "";
				passwordConfirmEl.focus();
				return;
			}
			var phoneEl = document.getElementById("user-phone");
			if (!phoneEl.value.trim()){
				alert("휴대폰번호를 적어주세요.");
				phoneEl.value = "";
				phoneEl.focus();
				return;
			}
			var checkMe = document.querySelector("#check-me").checked;
			if (!checkMe) {
				alert("개인정보 동의여부는 반드시 체크해야 합니다.");
				return;
			}
			
			document.getElementById("register-form").submit();		
		}
	</script>
</body>
</html>