<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
					<h2>상품검색</h2>
				</div>
			</div>
		</div>

		<div id="main">
			<!-- search페이지 내 검색 form -->
			<form name="" onsubmit="">
				<input type="hidden" name="searched" value="Y">
				<div class="search">
					<div class="text-center">
						<div style="margin: 100px auto 50p">
							<div style="border-top: 2px solid purple">
								<div style="padding-top: 40px">
									<div class="search_inputForm">
										<h4 class="search_inputForm">
											<label for="sword">검색 조건</label>
										</h4>
									</div>
									<div class="search_inputForm">
										<input type="text" name="sword" id="sword" class="" value="">
										<input type="submit" class="" value="검색">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>

			<div style="border-bottom: 1px solid">
				<p class="search_result">
					<strong class="emph">총 <span>836</span> 개
					</strong>의 상품이 검색되었습니다.
				</p>
			</div>

			<!-- 검색상품 리스트 show -->
			<div class="detailRowFrame d-flex justify-content-evenly"
				style="width: 100%">
				<div class="detailBorder">
					<a href="#"> <img class="productImg"
						src="/resources/images/apple.png" alt="사과"></a>
					<p>제품설명 : 본 제품은 사과다</p>
					<p>가격 : 3500</p>
				</div>
				<div class="detailBorder">
					<a href="#"> <img class="productImg"
						src="/resources/images/apple.png" alt="사과"></a>
					<p>제품설명 : 본 제품은 사과다</p>
					<p>가격 : 3500</p>
				</div>
				<div class="detailBorder">
					<a href="#"> <img class="productImg"
						src="/resources/images/apple.png" alt="사과"></a>
					<p>제품설명 : 본 제품은 사과다</p>
					<p>가격 : 3500</p>
				</div>
			</div>
		</div>
		<div id="footer">
			<%@ include file="../common/footer.jsp"%>
		</div>

	</div>
</body>

</html>