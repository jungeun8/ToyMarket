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
		<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>
  </style>
</head>
<body>

<div id="demo" class="carousel slide" data-ride="carousel">
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  <div class="carousel-inner">
     <div class="carousel-item active">
        <div class="row">
          <div class="col-4">
            <img src="la.jpg" alt="Los Angeles" class="img-thumbnail">
            <div class="carousel-caption">
              <h3>Los Angeles</h3>
              <p>We had such a great time in LA!</p>
            </div> 
         </div>
         <div class="col-4">
            <img src="la.jpg" alt="Los Angeles" class="img-thumbnail">
            <div class="carousel-caption">
              <h3>Los Angeles</h3>
              <p>We had such a great time in LA!</p>
            </div> 
         </div> 
         <div class="col-4">
            <img src="la.jpg" alt="Los Angeles" class="img-thumbnail">
            <div class="carousel-caption">
              <h3>Los Angeles</h3>
              <p>We had such a great time in LA!</p>
            </div> 
         </div> 
       </div>  
     </div>
     <div class="carousel-item">
        <div class="row">
          <div class="col-4">
            <img src="la.jpg" alt="Los Angeles"class="img-thumbnail">
            <div class="carousel-caption">
              <h3>Los Angeles</h3>
              <p>We had such a great time in LA!</p>
            </div> 
         </div>
         <div class="col-4">
            <img src="la.jpg" alt="Los Angeles" class="img-thumbnail">
            <div class="carousel-caption">
              <h3>Los Angeles</h3>
              <p>We had such a great time in LA!</p>
            </div> 
         </div> 
         <div class="col-4">
            <img src="la.jpg" alt="Los Angeles" class="img-thumbnail">
            <div class="carousel-caption">
              <h3>Los Angeles</h3>
              <p>We had such a great time in LA!</p>
            </div> 
         </div> 
       </div>  
     </div>
     <div class="carousel-item">
        <div class="row">
          <div class="col-4">
            <img src="la.jpg" alt="Los Angeles"class="img-thumbnail">
            <div class="carousel-caption">
              <h3>Los Angeles</h3>
              <p>We had such a great time in LA!</p>
            </div> 
         </div>
         <div class="col-4">
            <img src="la.jpg" alt="Los Angeles" class="img-thumbnail">
            <div class="carousel-caption">
              <h3>Los Angeles</h3>
              <p>We had such a great time in LA!</p>
            </div> 
         </div> 
         <div class="col-4">
            <img src="la.jpg" alt="Los Angeles" class="img-thumbnail">
            <div class="carousel-caption">
              <h3>Los Angeles</h3>
              <p>We had such a great time in LA!</p>
            </div> 
         </div> 
       </div>  
     </div>
  </div>
 
</div>

</body>
</html>

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