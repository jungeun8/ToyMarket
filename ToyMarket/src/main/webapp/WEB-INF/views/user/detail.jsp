<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<link href="../../resources/css/jhw-css.css" rel="stylesheet" type="text/css"></link>
<title>마켓컬리</title>
</head>
<body>
<div class="container">
	<%@include file="../common/header.jsp" %>
	<div class="jumbotron">
		<h1 align="center">회원 정보 수정</h1>
		<div class="col-6 offset-3">
			<form id="register-form" action="detail" method="post" class="border p-3 bg-light">
				<div class="form-group">
					<label>수정할 비밀번호</label>
					<input type="password" class="form-control" id="user-pwd" name="password" />
				</div>
				<div class="form-group">
					<label>비밀번호 확인</label>
					<input type="password" class="form-control" id="user-pwd-confirm" name="passwordConfirm" />
				</div>
				<div class="form-group">
					<label>수정할 이름</label>
					<input type="text" class="form-control" id="user-name" name="name" />
				</div>
				<div class="form-group">
					<label>수정할 이메일</label>
					<input type="text" class="form-control" id="user-email" name="email" />
				</div>
				<div class="form-group">
					<label>수정할 휴대폰번호</label>
					<input type="text" onKeyup="this.value=this.value.replace(/[^0-9]/g,'')" 
								class="form-control" id="user-phone" name="phone" />
				</div>
				<div class="text-right">
					<a href="/user/withdrawal" class="btn btn-outline-primary">회원탈퇴</a>
					<a href="/home" class="btn btn-secondary">취소</a>
					<button type="button" class="btn btn-primary" onclick="checkForm()">등록</button>
				</div>
			</form>
		</div>
	</div>
</div>
<script type="text/javascript">
	function checkForm() {
		
		// 이메일 관련
		var userEmailEl= document.getElementById("user-email");	
		if (!userEmailEl.value.trim()) { 
			alert("이메일을 적어주세요.");
			userEmailEl.focus();
			return;
		}
		if (userEmailEl.value.trim().length < 4) {
			alert("이메일은 4글자 이상으로 입력해야 합니다.");
			userIdEmail.focus();
			return;
		}
// 			var userIdEl= document.getElementById("user-email");
// 			if (userIdEl.value = 서버의 user-email) {
// 				alert("이미 사용중인 이메일 입니다.");
// 				userEmailEl.value = "";
// 				userEmailEl.focus();
// 				return;
// 			}
		// 비밀번호 관련
		var passwordEl = document.getElementById("user-pwd");
		var passwordConfirmEl = document.getElementById("user-pwd-confirm");
		if (!passwordEl.value.trim()) { 
			alert("비밀번호를 적어주세요.");
			passwordEl.focus();
			return;
		}
		if (!passwordConfirmEl.value.trim()) { 
			alert("비밀번호 확인을 적어주세요.");
			passwordConfirmEl.focus();
			return;
		}
		if (passwordEl.value != passwordConfirmEl.value) {
			alert("비밀번호가 서로 일치하지 않습니다.");
			passwordConfirmEl.value = "";
			passwordConfirmEl.focus();
			return;
		}
		
		// 휴대폰번호 관련
		var phoneEl = document.getElementById("user-phone");
		if (!phoneEl.value.trim()){
			alert("휴대폰번호를 적어주세요.");
			phoneEl.value = "";
			phoneEl.focus();
			return;
		}
		document.getElementById("register-form").submit();		
	}
</script>
</body>
</html>