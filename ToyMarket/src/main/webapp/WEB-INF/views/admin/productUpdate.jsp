<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  	<title>상품수정</title>
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
  		
  		input[type="number"]::-webkit-outer-spin-button,
		input[type="number"]::-webkit-inner-spin-button {
    	-webkit-appearance: none;
    	margin: 0;
			}
  		
  	</style>
</head>
<body>
    <div class="container">
    <%@ include file="../common/adminHeader.jsp" %>
        <main>
            <div class="container">
                <form method="post" action="productupdate" >
                    <div class="row">
                        <span class="border-bottom border-2 border-dark"><h1>상품수정</h1></span>
                        <div class="col-6">
                            <div class="mb-3 mt-3">
                                <label for="formFile" class="form-label "><h3>상품 이미지</h3></label>
                                <input class="form-control" type="file" accept="img/*" id="uplodeImg" onchange="setThumbnail(event)">
                                <div id="image_container" class="border"></div>
                            </div>
                        </div>
                        <div class="col-1 mt-5">
                            <h6 class="mt-4">카테고리: </h6>
                            <h6 style="margin-top: 47px;">상품명: </h6>
                            <h6 style="margin-top: 55px;">제조사: </h6>
                            <h6 style="margin-top: 55px;">상품가격: </h6>
                            <h6 style="margin-top: 55px;">할인율: </h6>
                            <h6 style="margin-top: 45px;">할인여부: </h6>
                            <h6 style="margin-top: 45px;">재고량: </h6>
                            <h6 style="margin-top: 55px;">판매단위: </h6>
                            <h6 style="margin-top: 55px;">중량/용량: </h6>
                            <h6 style="margin-top: 45px;">판매상태: </h6>                                                
                        </div>
                        <div class="col-5">
                            <h3 class="mb-3 mt-3">상품 정보 수정</h3>                        
                            <select class="form-select mb-3" aria-label="Default select example" style="width: 300px;">
                                <option selected>카테고리</option>
                                <option value="1">One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                            </select>
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="floatingInput" placeholder="상품명">
                                <label for="floatingInput">상품명</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="floatingInput" placeholder="제조사">
                                <label for="floatingInput">제조사</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="number" class="form-control" id="floatingInput" placeholder="상품가격" min="0">
                                <label for="floatingInput">상품가격</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="number" class="form-control" id="floatingInput" placeholder="할인율" min="0" max="100" step="5">
                                <label for="floatingInput">할인율</label>
                            </div>
                            <select class="form-select mb-3" aria-label="Default select example" style="width: 300px;">
                                <option selected>할인여부</option>
                                <option value="1">Y</option>
                                <option value="2">N</option>
                            </select>
                            <select class="form-select mb-3" aria-label="Default select example" style="width: 300px;">
                                    <option selected>샛별배송여부</option>
                                    <option value="1">Y</option>
                                    <option value="2">N</option>
                            </select>
                            <div class="form-floating mb-3">
                                <input type="number" class="form-control" id="floatingInput" placeholder="상품가격" min="0">
                                <label for="floatingInput">재고량</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="floatingInput" placeholder="판매단위" >
                                <label for="floatingInput">판매단위</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="floatingInput" placeholder="중량/용량">
                                <label for="floatingInput">중량/용량</label>
                            </div>
                            <select class="form-select mb-3" aria-label="Default select example" style="width: 300px;">
                                <option selected>판매상태</option>
                                <option value="1">판매</option>                              
                                <option value="2">판매중지</option>                               
                            </select>
                        </div>                                                                                  
                    </div>                    
                    <div class="row">
                        <div class="col-12">                        
                            <div class="form-floating mb-3">
                                <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea" style="height: 300px;"></textarea>
                                <label for="floatingTextarea">상품설명</label>
                            </div>
                            <div class="form-floating">
                                <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea" style="height: 100px;"></textarea>
                                <label for="floatingTextarea">상품추가설명</label>
                            </div>
                            <div class="d-flex justify-content-end">
                                <button type="submit" class="btn btn-primary">등록</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>            
        </main>
    </div>
<script> function setThumbnail(event) { 
	document.querySelector("div#image_container").innerHTML = "";

	var reader = new FileReader(); 
		
	var img = document.createElement("img"); 
	img.setAttribute("class", "img-thumbnail")

	reader.onload = function(event){ 		
		img.setAttribute("src", event.target.result);
		document.querySelector("div#image_container").appendChild(img); 
	}; 
		
	reader.readAsDataURL(event.target.files[0]); } 
</script>
</body>
</html>

