<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
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
</html>
