<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  	<title>Bootstrap 5.0.1 Example</title>
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
  		#categoryTable{
  		 color: black;
  		 
  		}
  		#linkNone{
  		 a:link { color: black; text-decoration: none;}
 		}

  	</style>
</head>
<body>
<div class="container">
	<%@ include file="../common/adminHeader.jsp" %>
<div class="container">
	<main>
        <div class="row mb-3">
            <span class="border-bottom border-dark border-2"><h1>상품 상세정보</h1></span>                        
        </div>
        <div class="container border brder-secondary">
        <div class="row">
            <div class="col-6 mt-3">               
                <div id="img-container">
                    <img src="https://im-media.voltron.voanews.com/Drupal/01live-211/styles/892x501/s3/ap-images/2020/03/_2.jpg?itok=fBojLU8M" alt="" class="" style="width: 630px; height: 360PX;object-fit: scale-down;">
                </div>            
            </div>
            <div class="col-6 mt-3">
                <table class="table table-bordered  ">
                    <colgroup>
                        <col width=20%>
                        <col width=80%>
                    </colgroup>
                    <tr>
                        <td>카테고리</td>
                        <td>${product.categoryName }</td>                        
                    </tr>
                    <tr>
                        <td>상품명</td>
                        <td>${product.name }</td>                        
                    </tr>
                    <tr>
                        <td>제조사</td>
                        <td>${product.brand }</td>                        
                    </tr>
                    <tr>
                        <td>상품가격</td>
                        <td>${product.price }</td>                        
                    </tr>
                    <tr>
                        <td>할인율</td>
                        <td>${product.discountRate }%</td>                        
                    </tr>
                    <tr>
                        <td>할인여부</td>
                        <td>${product.discountYN }</td>                        
                    </tr>
                    <tr>
                        <td>재고량</td>
                        <td>${product.stock }</td>                        
                    </tr>
                    <tr>
                        <td>판매단위</td>
                        <td>${product.sellUnit }</td>                        
                    </tr>
                    <tr>
                        <td>중량/용량</td>
                        <td>${product.weight }</td>                        
                    </tr>
                    <tr>
                        <td>판매상태</td>
                        <td>${product.status }</td>                        
                    </tr>
                </table>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <table class="table table-bordered">
                    <colgroup>
                        <col width=20%>
                        <col width=80%>
                    </colgroup>
                    <tr style="height: 200px !important;">
                        <td>상품설명</td>
                        <td></td>
                    </tr>
                    <tr style="height: 100px !important;">
                        <td>상품추가설명</td>
                        <td></td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="row">
            <div class="col-6">
                <a class="btn btn-outline-primary mb-2" href="">수정</a>
                <a class="btn btn-outline-danger mb-2" href>삭제</a>
            </div>     
            <div class="col-6 d-flex justify-content-end">
                <a class="btn btn-outline-info mb-2" href="">목록</a>
            </div>       
        </div>             
    </div>
    </main>
	
</div>
	
</div>
</body>
</html>
