<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<title>토이마켓 : 내일의 장보기, 토이마켓</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"></link>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
		<style type="text/css">
			.container {
				width: 1050px !important;
    			margin: 0 auto !important;
			}
			
			.form-check-input:checked {
				background-color: #198754 !important;
				border-color: #198754 !important;
			}
		</style>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="col-12 border">
					<div id="cart-put" class="d-flex justify-content-between">
						<div class="col-5">
							<img alt="상품 대표이미지" src="https://img-cf.kurly.com/shop/data/goods/1623216767987y0.jpg" class="img-thumbnail">
						</div>
						<div class="col-7 ps-5">
							<div class="pt-2 pb-3" id="productName">
								<p class="fs-3"><strong>[쉐푸드] 땡초 참치마요 삼각김밥</strong></p>
								<p class="fs-6">땡초의 알싸함을 더해 풍성한 맛</p>
							</div>
							<div class="pb-4">
								<p class="fs-3">1,200원</p>
							</div>
							<div class="row mb-4 border-top border-bottom" id="productInfo">
								<div class="col-4">
									<p class="py-3">판매단위</p>
									<p class="py-3">중량/용량</p>
									<p class="py-3">배송구분</p>
									<p class="py-3">포장타입</p>
									<p class="py-3">구매수량</p>
								</div>
								<div class="col-8">
									<p class="py-3">1개</p>
									<p class="py-3">112g</p>
									<p class="py-3">샛별배송/택배배송</p>
									<p class="py-3">냉장/종이포장</p>
									<div class="py-3 input-group">
										<input type="hidden" id="productPrice" value="1200">
										<button type="button" class="btn btn-outline-success btn-sm fa fa-minus"  id="decrease"></button>
 										<button type="button" class="btn btn-outline btn-sm" id="number" disabled>1</button>
										<button type="button" class="btn btn-outline-success btn-sm fa fa-plus"  id="increase" ></button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="d-flex justify-content-between pb-5">
						<div class="col-5"></div>
						<div class="col-7">
							<div class="d-flex flex-row-reverse bd-highlight">
								<div class="p-2 bd-highlight">
									<font size="2">총 상품금액 : </font><input type="button" class="btn btn-outline fs-3" id="productSum" readonly> 
								</div>
							</div>
							<div class="d-grid gap-2 ps-5">
								<button class="btn btn-outline-success btn-lg" type="button">장바구니</button>
							</div>
						</div>
					</div>
					<div id="product-view">
						<nav class="navbar sticky-top navbar-light bg-light">
							<div class="container-fluid">
								<a class="navbar-brand" href="#product-detail">상세설명</a>
								<a class="navbar-brand" href="#product-review">상품후기</a>
								<a class="navbar-brand" href="#product-inquiry">상품문의</a>
							</div>
						</nav>
						<div id="product-detail">
						<br/>
						<br/>
						<br/>
						<br/>
						<div id="product-description">
							<img src="//img-cf.kurly.com/shop/data/goodsview/20210609/gv40000191340_1.jpg" class="pb-4">
							
							<p class="text-center fs-4">땡초의 알싸함을 더해 풍성한 맛</p>
							<p class="text-center fs-3">[쉐푸드]</p>
							<p class="text-center fs-2">땡초 참치마요 삼각김밥</p>
							<hr>
							<p class="fs-6">
								쉐푸드는 롯데푸드에서 운영하는 가정 간편식 브랜드예요. 이번에는 매콤함을 더해 색다르게 즐기는 참치마요 삼각김밥을 선보입니다. 땡초 참치마요 삼각김밥은 바삭한 김 속에 당근, 홍피망 등 야채와 간장 양념을 넣어 비빈 밥을 담았어요. 땡초를 자잘하게 썰어 넣어 알싸한 풍미를 더했답니다. 토핑으로 넣은 짭짤한 참치마요는 땡초의 매콤함과 절묘하게 어우러지지요. 전자레인지에 간단히 데워 간식 또는 도시락 메뉴로 다양하게 즐겨 보세요.
							</p>
							<br/>
							<br/>
							<p class="text-center fs-1">Kurly's Check Point</p>
							<img src="/resources/images/test1.PNG">
							<br/>
							<br/>
							<br/>
							<br/>
							<br/>
							<br/>
							<img src="/resources/images/test2.PNG">
							<br/>
							<br/>
							<br/>
							<br/>
							<br/>
							<br/>
							<br/>
							<img src="/resources/images/test3.PNG">
							<br/>
							<br/>
							<br/>
							<br/>
							<br/>
							<br/>
							<img src="/resources/images/test4.PNG">
							<br/>
							<br/>
							<br/>
							<br/>
							<br/>
							<br/>
							<br/>
							<br/>
							<br/>
							<br/>
							<img src="/resources/images/test5.PNG">
							<br/>
							<br/>
							<br/>
							<br/>
							<br/>
							<br/>
							<br/>
							<img src="/resources/images/test6.PNG">
							<img src="/resources/images/test7.PNG">


						</div>
								
						</div>
						<div id="product-review">
							<br/>
							<br/>
							<br/>
							<br/>
							<div class="d-flex justify-content-between pb-4">
								<div>
									<p class="fs-5">PRODUCT REVIEW</p>
									<font size="2">배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내 1:1 문의에 남겨주세요.</font><br/>
									<font size="2">상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로 이동될 수 있습니다.</font>
								</div>
								<div class="d-flex align-items-end">
									<select class="form-select form-select-sm" aria-label=".form-select-sm example">
										<option value="1" selected>최근등록순</option>
										<option value="2">좋아요순</option>
										<option value="3">조회많은순</option>
									</select>
								</div>
							</div>
							<div id="review-table">
								<table class="table table-hover border-top">
									<colgroup>
										<col width="10%">
										<col width="50%">
										<col width="10%">
										<col width="10%">
										<col width="10%">
										<col width="10%">
									</colgroup>
									<thead>
										<tr>
											<th class="text-center py-3">번호</th>
											<th class="text-center py-3">제목</th>
											<th class="text-center py-3">작성자</th>
											<th class="text-center py-3">작성일</th>
											<th class="text-center py-3">도움</th>
											<th class="text-center py-3">조회</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="text-center py-3">66</td>
											<td class="py-3">리뷰제목리뷰제목</td>
											<td class="text-center py-3">작성자</td>
											<td class="text-center py-3">2021-06-15</td>
											<td class="text-center py-3">0</td>
											<td class="text-center py-3">100</td>
										</tr>
										<tr>
											<td class="text-center py-3">66</td>
											<td class="py-3">리뷰제목리뷰제목</td>
											<td class="text-center py-3">작성자</td>
											<td class="text-center py-3">2021-06-15</td>
											<td class="text-center py-3">0</td>
											<td class="text-center py-3">100</td>
										</tr>
										<tr>
											<td class="text-center py-3">65</td>
											<td class="py-3">리뷰제목리뷰제목</td>
											<td class="text-center py-3">작성자</td>
											<td class="text-center py-3">2021-06-15</td>
											<td class="text-center py-3">0</td>
											<td class="text-center py-3">100</td>
										</tr>
										<tr>
											<td class="text-center py-3">64</td>
											<td class="py-3">리뷰제목리뷰제목</td>
											<td class="text-center py-3">작성자</td>
											<td class="text-center py-3">2021-06-15</td>
											<td class="text-center py-3">0</td>
											<td class="text-center py-3">100</td>
										</tr>
										<tr>
											<td class="text-center py-3">63</td>
											<td class="py-3">리뷰제목리뷰제목</td>
											<td class="text-center py-3">작성자</td>
											<td class="text-center py-3">2021-06-15</td>
											<td class="text-center py-3">0</td>
											<td class="text-center py-3">100</td>
										</tr>
										<tr>
											<td class="text-center py-3">62</td>
											<td class="py-3">리뷰제목리뷰제목</td>
											<td class="text-center py-3">작성자</td>
											<td class="text-center py-3">2021-06-15</td>
											<td class="text-center py-3">0</td>
											<td class="text-center py-3">100</td>
										</tr>
										<tr>
											<td class="text-center py-3">61</td>
											<td class="py-3">리뷰제목리뷰제목</td>
											<td class="text-center py-3">작성자</td>
											<td class="text-center py-3">2021-06-15</td>
											<td class="text-center py-3">0</td>
											<td class="text-center py-3">100</td>
										</tr>
									</tbody>
								</table>
								<div class="d-flex justify-content-end">
									<button type="button" class="btn btn-outline-success" data-bs-toggle="modal" data-bs-target="#modalReview">후기 쓰기</button>
									<!-- Modal -->
									<div class="modal fade" id="modalReview" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
										<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
													<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
												</div>
												<div class="modal-body">
												  ...
												</div>
												<div class="modal-footer">
												  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
												  <button type="button" class="btn btn-primary">Understood</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div id="review-pagenation" class="d-flex justify-content-center">
								<nav aria-label="Page navigation example">
									<ul class="pagination">
										<li class="page-item">
											<a class="page-link" href="#" aria-label="Previous">
												<span aria-hidden="true">&laquo;</span>
											</a>
										</li>
										<li class="page-item"><a class="page-link" href="#">1</a></li>
										<li class="page-item"><a class="page-link" href="#">2</a></li>
										<li class="page-item"><a class="page-link" href="#">4</a></li>
										<li class="page-item"><a class="page-link" href="#">5</a></li>
										<li class="page-item"><a class="page-link" href="#">6</a></li>
										<li class="page-item"><a class="page-link" href="#">7</a></li>
										<li class="page-item"><a class="page-link" href="#">8</a></li>
										<li class="page-item"><a class="page-link" href="#">9</a></li>
										<li class="page-item"><a class="page-link" href="#">10</a></li>
										<li class="page-item">
											<a class="page-link" href="#" aria-label="Next">
												<span aria-hidden="true">&raquo;</span>
											</a>
										</li>
									</ul>
								</nav>
							</div>
						</div>
						<div id="product-inquiry">
							<br/>
							<br/>
							<br/>
							<br/>
							<div class="d-flex justify-content-between pb-4">
								<div>
									<p class="fs-5">PRODUCT Q&A</p>
									<font size="2">상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로 이동될 수 있습니다.</font><br/>
									<font size="2">배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내 1:1 문의에 남겨주세요.</font>
								</div>
							</div>
							<div id="review-table">
								<table class="table table-hover border-top">
									<colgroup>
										<col width="55%">
										<col width="15%">
										<col width="15%">
										<col width="15%">
									</colgroup>
									<thead>
										<tr>
											<th class="text-center py-3">제목</th>
											<th class="text-center py-3">작성자</th>
											<th class="text-center py-3">작성일</th>
											<th class="text-center py-3">답변상태</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="py-3">문의제목제목</td>
											<td class="text-center py-3">하동건</td>
											<td class="text-center py-3">2021-06-15</td>
											<td class="text-center py-3">답변대기</td>
										</tr>
										<tr>
											<td class="py-3">문의제목제목</td>
											<td class="text-center py-3">이동규</td>
											<td class="text-center py-3">2021-06-15</td>
											<td class="text-center py-3">답변대기</td>
										</tr>
										<tr>
											<td class="py-3">문의제목제목</td>
											<td class="text-center py-3">이태원</td>
											<td class="text-center py-3">2021-06-15</td>
											<td class="text-center py-3">답변대기</td>
										</tr>
										<tr>
											<td class="py-3">문의제목제목</td>
											<td class="text-center py-3">박진혁</td>
											<td class="text-center py-3">2021-06-14</td>
											<td class="text-center py-3">답변완료</td>
										</tr>
										<tr>
											<td class="py-3">문의제목제목</td>
											<td class="text-center py-3">김정은</td>
											<td class="text-center py-3">2021-06-14</td>
											<td class="text-center py-3">답변완료</td>
										</tr>
										<tr>
											<td class="py-3">비밀글입니다. <i class="fas fa-lock"></i></td>
											<td class="text-center py-3">정호원</td>
											<td class="text-center py-3">2021-06-13</td>
											<td class="text-center py-3">답변완료</td>
										</tr>
									</tbody>
								</table>
								<div class="d-flex justify-content-between">
									<div></div>
									<div id="review-pagenation" class="">
										<nav aria-label="Page navigation example">
											<ul class="pagination">
												<li class="page-item">
													<a class="page-link" href="#" aria-label="Previous">
														<span aria-hidden="true"><i class="fas fa-angle-left"></i></span>
													</a>
												</li>
												<li class="page-item">
													<a class="page-link" href="#" aria-label="Next">
														<span aria-hidden="true"><i class="fas fa-angle-right"></i></span>
													</a>
												</li>
											</ul>
										</nav>
									</div>
									<div class="">
										<button type="button" class="btn btn-outline-success" data-bs-toggle="modal" data-bs-target="#modalInquiry">문의하기</button>
										<!-- Modal -->
										<div class="modal fade" id="modalInquiry" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
											<div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
												<div class="modal-content p-4">
													<div class="modal-header border-bottom">
														<h5 class="modal-title fs-3" id="staticBackdropLabel">상품 문의하기</h5>
														<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
													</div>
													<div class="modal-body border-bottom">
														<table class="table table-borderless">
															<colgroup>
																<col width="20%">
																<col width="80%">
															</colgroup>
															<tr>
																<td class="h-100">
																	<img alt="상품 대표이미지" src="https://img-cf.kurly.com/shop/data/goods/1623216767987y0.jpg" class="img-thumbnail" style="width:100px; height:100px;">
																</td>
																<td class="d-flex align-items-center">
																	<div class="h-100">
																		<p class="fs-5"><strong>[쉐푸드]땡초 참치마요 삼각김밥</strong></p>
																	</div>
																</td>
															</tr>
															<tr>
																<td class="py-2">
																	<p class="fs-5">제목</p>
																</td>
																<td class="py-2">
																	<input type="text" class="form-control" placeholder="제목을 입력해주세요"/>
																</td>
															</tr>
															<tr>
																<td class="py-2">
																	<p class="fs-5">내용</p>
																</td>
																<td class="py-2">
																	<textarea class="form-control" style="height: 300px;" 
																	placeholder="상품문의 작성 전 확인해 주세요
																				답변은 영업일 기준 2~3일 소요됩니다.
																				해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로 이동될 수 있습니다.
																				배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내 1:1 문의에 남겨주세요.">
																	</textarea>
																</td>
															</tr>
															<tr>
																<td class="py-2">
																</td>
																<td class="py-2">
																	<div class="form-check form-switch">
																		<input class="form-check-input" type="checkbox" id="flexSwitchCheckDefault">
																		<label class="form-check-label" for="flexSwitchCheckDefault">비밀글로 문의하기</label>
																	</div>
																</td>
															</tr>
														</table>
													</div>
													<div class="modal-footer d-flex justify-content-center">
													  <button type="button" class="btn btn-outline-secondary btn-lg" data-bs-dismiss="modal">취소</button>
													  <button type="button" class="btn btn-outline-success btn-lg">등록</button>
													</div>
												</div>
											</div>
										</div>
										<!-- Modal end -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			/* 구매수량 증감식 시작 */
			var number = document.getElementById("number"); // 수량
			var increase = document.getElementById("increase"); // 증가버튼
			var decrease = document.getElementById("decrease"); // 감소버튼
			var productPrice = document.getElementById("productPrice"); // 상품가격
			var productSum = document.getElementById("productSum"); // 합계
			productSum.value = new Number(productPrice.value).toLocaleString() + '원';
			
			// 증가버튼을 클릭했을 때
			increase.onclick = () => {
				var current =  parseInt(number.innerText, 10);
				number.innerText = current + 1;
				
				productSum.value = new Number(number.innerText * productPrice.value).toLocaleString() + '원';
			};
			
			
			// 감소버튼을 클릭했을 때
			decrease.onclick = () => {
				var current = parseInt(number.innerText, 10);
				
				if (current <= 0) {
					number.innerText = 1;
					current = 1;
				}
				number.innerText = current - 1;
				
				productSum.value = new Number(number.innerText * productPrice.value).toLocaleString() + '원';
			};
			/* 구매수량 증감식 끝 */
		</script>
	</body>
</html>