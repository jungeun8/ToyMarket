<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  	<title>상품관리</title>
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
			<div class="row">
				<div class="col-3">
					<!-- <nav class="nav flex-column border border-dark border-1 rounded">
  						<span class="navbar-text text-center fs-3">카테고리</span>
  						<a class="nav-link" href="#">전체상품</a>
  						<a class="nav-link" href="#">육류</a>
  						<a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
					</nav> -->
					<table class="table table-light table-hover border">
						<thead>
							<tr>
								<th>카테고리</th>
							</tr>
						</thead>
						<tbody >
							<tr>
							<td>전체상품목록</td>
							</tr>
							<tr>
							<td>육류</td>
							</tr>
							<tr>
							<td>야채류</td>
							</tr>
							<tr>
							<td>어류</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="col-9">
					<table class="table table-light table-hover table-text text-center align-middle" >
						<thead>
							<tr>
								
								<th>
								<div class="form-check">
  									<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
  									<label class="form-check-label" for="flexCheckDefault">
    									전체선택
  									</label>
								</div> 
								</th>
								<th>상품번호</th>
								<th>상품이미지</th>
								<th>상품명</th>
								<th>제조사</th>
								<th>판매상태</th>
								<th>재고량</th>
								<th><select></select>정렬</th>
							</tr>
						</thead>
						<tbody class="align-middle">
							<tr>
								<td>
								<div class="form-check">
  									<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
  									<label class="form-check-label" for="flexCheckDefault">
    									선택
  									</label>
								</div>
								</td>
								<td>101</td>
								<td><img alt="" src="resources/img/MarketKurly.png" style="weight : 100px; height : 60px"></td>
								<td>T-bone 스테이크</td>
								<td>스테이크집</td>
								<td>판매중</td>
								<td>10개</td>
								<td><button type="button" class="btn btn-outline-danger">삭제</button></td>
							</tr>
							<tr>
								<td>
								<div class="form-check">
  									<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
  									<label class="form-check-label" for="flexCheckDefault">
    									선택
  									</label>
								</div>
								</td>
								<td>101</td>
								<td><img alt="" src="resources/img/MarketKurly.png" style="weight : 100px; height : 60px"></td>
								<td>T-bone 스테이크</td>
								<td>스테이크집</td>
								<td>판매중</td>
								<td>10개</td>
								<td></td>
							</tr>
							<tr>
								<td>
								<div class="form-check">
  									<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
  									<label class="form-check-label" for="flexCheckDefault">
    									선택
  									</label>
								</div>
								</td>
								<td>101</td>
								<td><img alt="" src="resources/img/MarketKurly.png" style="weight : 100px; height : 60px; vertical-align:bottom"></td>
								<td>T-bone 스테이크</td>
								<td>스테이크집</td>
								<td>판매중</td>
								<td>10개</td>
								<td></td>
							</tr>
							<tr>
								<td>
								<div class="form-check">
  									<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
  									<label class="form-check-label" for="flexCheckDefault">
    									선택
  									</label>
								</div>
								</td>
								<td>101</td>
								<td><img alt="" src="resources/img/MarketKurly.png" style="weight : 100px; height : 60px"></td>
								<td>T-bone 스테이크</td>
								<td>스테이크집</td>
								<td>판매중</td>
								<td>10개</td>
								<td></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</main>
	</div>
</body>
</html>