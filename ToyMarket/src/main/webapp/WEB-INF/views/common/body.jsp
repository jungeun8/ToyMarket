<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<main>
	<!-- 이벤트 페이지 링크 (링크 안걸어놓음)-->
	<div id="eventCarousel">
		<div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
			<div class="carousel-inner bodyContentFrame" style="background: purple; margin-top: 50px;">
				<div class="carousel-item active" style="object-fit:cover;">
					<img src="/resources/images/carouselImg1.png" class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
					<img src="/resources/images/carouselImg2.png" class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
					<img src="/resources/images/carouselImg3.png" class="d-block w-100" alt="...">
				</div>
			</div>
		</div>
	</div>

	<div style="padding-bottom: 50px">
		<div class="tit text-center" style="padding-top: 50px">
			<h2 class="tit"><strong> 할인/특가 ></strong></h2>
		</div>
		
		<%-- 캐러셀 질문
		<div class="text-center my-3">
		<div class="row mx-auto my-auto justify-content-center">
	        <div id="recipeCarousel" class="carousel slide" data-bs-ride="carousel">
	            <div class="carousel-inner" role="listbox">
	                <span>
	                <div class="carousel-item active">
	                    <div class="col-md-3">
	                        <div class="card">
	                            <div class="card-img">
	                                <img src="//via.placeholder.com/500x400/31f?text=1" class="img-fluid">
	                            </div>
	                            <div class="card-img-overlay">Slide 1</div>
	                        </div>
	                    </div>
	                </div>
	                </span>
	                <span>
	                <div class="carousel-item">
	                    <div class="col-md-3">
	                        <div class="card">
	                            <div class="card-img">
	                                <img src="//via.placeholder.com/500x400/e66?text=2" class="img-fluid">
	                            </div>
	                            <div class="card-img-overlay">Slide 2</div>
	                        </div>
	                    </div>
	                </div>
	                </span>
	                <div class="carousel-item">
	                    <div class="col-md-3">
	                        <div class="card">
	                            <div class="card-img">
	                                <img src="//via.placeholder.com/500x400/7d2?text=3" class="img-fluid">
	                            </div>
	                            <div class="card-img-overlay">Slide 3</div>
	                        </div>
	                    </div>
	                </div>
	                <div class="carousel-item">
	                    <div class="col-md-3">
	                        <div class="card">
	                            <div class="card-img">
	                                <img src="//via.placeholder.com/500x400?text=4" class="img-fluid">
	                            </div>
	                            <div class="card-img-overlay">Slide 4</div>
	                        </div>
	                    </div>
	                </div>
	                <div class="carousel-item">
	                    <div class="col-md-3">
	                        <div class="card">
	                            <div class="card-img">
	                                <img src="//via.placeholder.com/500x400/aba?text=5" class="img-fluid">
	                            </div>
	                            <div class="card-img-overlay">Slide 5</div>
	                        </div>
	                    </div>
	                </div>
	                <div class="carousel-item">
	                    <div class="col-md-3">
	                        <div class="card">
	                            <div class="card-img">
	                                <img src="//via.placeholder.com/500x400/fc0?text=6" class="img-fluid">
	                            </div>
	                            <div class="card-img-overlay">Slide 6</div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	            <a class="carousel-control-prev bg-transparent w-aut" href="#recipeCarousel" role="button" data-bs-slide="prev">
	                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	            </a>
	            <a class="carousel-control-next bg-transparent w-aut" href="#recipeCarousel" role="button" data-bs-slide="next">
	                <span class="carousel-control-next-icon" aria-hidden="true"></span>
	            </a>
	        </div>
	    </div>
		</div>
		--%>
		

		<!-- /////// 캐러셀 적용 안한 코드 ///// -->
		<%-- <c:set var="max" value="16"/>
		<c:set var="show_digit" value="4"/> --%>
		<div id="productList" >
			<div style="width: 1050px; margin: 0 auto">
				<div class="row " style=" margin : 0px auto 0px;" >
					<c:forEach var="discountedProduct" items="${discountedProducts }" begin="1" end="4">
						<div class="col-xs-6 col-md-3 " style="float: left; padding-left: auto;">
							<a href="/product/detail?productNo=${discountedProduct.no }" class="thumbnail "> 
								<img src="${discountedProduct.image }" style="height:283px; width: 222px" alt="...">
							</a>
							<div>
								<a href="#" style="text-decoration:none;display: block; color: black; size: 6px ">${discountedProduct.name}  ${discountedProduct.weight }</a>
								<span style="text-decoration-line: line-through; color: gray">
									<fmt:formatNumber value="${discountedProduct.price}"/>원
								</span> 
								<strong><span style="color: purple; font-size: 20px">
									<fmt:formatNumber value="${discountedProduct.price-discountedProduct.price*discountedProduct.discountRate}"/>원
								</span></strong>
								<span style="color: red">
									(<fmt:formatNumber type="percent" value="${discountedProduct.discountRate }" />)
								</span>
							</div>
						</div>	
					</c:forEach>
				</div>
			</div>
		</div>	
		<!-- /////// 캐러셀 적용 안한 코드 ///// -->
		
	</div>
	
	<div style="padding-bottom: 50px; background-color:#fdf7ff">
		<div class="tit text-center" style="padding-top: 50px">
			<h2 class="tit"><strong> 할인/특가 ></strong></h2>
		</div>
		
		<!-- 할인상품 리스트 링크 -->
		<div id="productList" >
			<div class="row bodyContentFrame" >
											<!-- Q. 정렬 마진말고 어떻게 해야할지 -->
				<div class="col-xs-6 col-md-3 " style="padding-left:auto;" >
					<a href="#" class="thumbnail "> <img src="/resources/images/meat.png " style="" alt="...">
					</a>
				</div>
				<div class="col-xs-6 col-md-3" style="padding-left:auto;" >
					<a href="#" class="thumbnail"> <img src="/resources/images/meat.png" alt="...">
					</a>
				</div>
				<div class="col-xs-6 col-md-3" style="padding-left:auto;" >
					<a href="#" class="thumbnail"> <img src="/resources/images/meat.png" alt="...">
					</a>
				</div>
				<div class="col-xs-6 col-md-3" style="padding-left:auto;" >
					<a href="#" class="thumbnail"> <img src="/resources/images/meat.png" alt="...">
					</a>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-bottom: 200px">
		<!-- MD추천(랜덤) -->
		<div class="tit text-center" style="padding-top: 50px">
			<h2 class="tit"><strong> 할인/특가 ></strong></h2>
		</div>
		
		<div id="productList" >
			<div class="row bodyContentFrame" >
											<!-- Q. 정렬 마진말고 어떻게 해야할지 -->
					<div class="col-xs-6 col-md-3" style="padding-left:auto;" >
					<a href="#" class="thumbnail"> <img src="/resources/images/meat.png" alt="...">
					</a>
				</div>
				<div class="col-xs-6 col-md-3" style="padding-left:auto;" >
					<a href="#" class="thumbnail"> <img src="/resources/images/meat.png" alt="...">
					</a>
				</div>
				<div class="col-xs-6 col-md-3" style="padding-left:auto;" >
					<a href="#" class="thumbnail"> <img src="/resources/images/meat.png" alt="...">
					</a>
				</div>
				<div class="col-xs-6 col-md-3" style="padding-left:auto;" >
					<a href="#" class="thumbnail"> <img src="/resources/images/meat.png" alt="...">
					</a>
				</div>
			</div>
		</div>
	</div>
</main>