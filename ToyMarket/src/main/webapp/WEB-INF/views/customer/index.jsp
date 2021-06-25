<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>Toy Market</title>
 	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"></link>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">
	<link href="../../resources/css/jhw-css.css?after" rel="stylesheet" type="text/css"></link>

</head>
<body id="jhw">
	<div class="container" >
		<div id="header">
			<%@ include file="../common/header.jsp"%>
		</div>

		<div id="main">
			<%@ include file="../common/body.jsp" %>
		</div>

		<div id="footer">
			<%@ include file="../common/footer.jsp"%>
		</div>
	</div>	
	<script type="text/javascript">
		function loginCheckAlert(){
			var el = document.getleEmentById("btn-basket");
			var text="로그인이 필요한 서비스입니다.";
			alert(text);
		}
	</script>
	
</body>
</html>