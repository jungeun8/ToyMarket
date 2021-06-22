<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<header class="my-3">
	<nav class="navbar navbar-expand-sm navbar-dark" class="d-flex justify-content-between">
 	<div class="container border-bottom" id="headerBorder">
 		<div>
 			<ul class="navbar-nav me-auto mb-2 mb-md-0">
          			<li class="nav-item dropdown">
          				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            				<img alt="상품" src="/resources/images/box.png" style="weight : 80px; height : 80px">
          				</a>
          				<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            				<li><a class="dropdown-item" href="/adminproductmain">상품관리</a></li>
            				<li><hr class="dropdown-divider"></li>
            				<li><a class="dropdown-item" href="/adminproductinsert">상품추가</a></li>
            				<li><a class="dropdown-item" href="/adminproductupdate">상품수정</a></li>
          				</ul>
        			</li>
          			<li class="nav-item dropdown">
          				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            				<img alt="고객" src="/resources/images/user.png" style="weight : 80px; height : 80px">
          				</a>
          				<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            				<li><a class="dropdown-item" href="">고객관리</a></li>
            				<li><hr class="dropdown-divider"></li>
            				<li><a class="dropdown-item" href="/admincustomerinfo">회원정보조회</a></li>
            				<li><a class="dropdown-item" href="/admincustomerdelete">회원탈퇴/삭제관리</a></li>
          				</ul>
        			</li>
        		</ul>
 		</div>
 		<div class="navbar-nav " class="d-flex justify-content-center">
 			<a href="/adminmain">
            	<img alt="" src="/resources/images/MarketKurly.png" style="weight : 400px; height : 100px">
            </a>
 		</div>
 		<div>
 			<nav class="navbar-nav">
 				<a class="nav-link" href="/home" id="shopLink" target="_blank">쇼핑몰 바로가기</a>
 			</nav>	
 		</div>
 		<div>
 			<nav class="navbar-nav">
 				<p id="loginInfo">로그인정보 <br>아이디 : hong <br>사원명 : 홍길동 <br> 세션만료 : 00:00</p>
 			</nav>
 		</div>
 		<div>
 		<a href="/user/logout" class="btn btn-secondary">로그아웃</a>
 		</div>
 	</div>
 	</nav>
</header>




