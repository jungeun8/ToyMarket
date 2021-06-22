<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  	<title>Bootstrap 4 Example</title>
  	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
  	
  	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script>
        // SDK를 초기화 합니다. 사용할 앱의 JavaScript 키를 설정해 주세요.
        Kakao.init('462d788e255fdcdb4d15f3147b2698f0');

        // SDK 초기화 여부를 판단합니다.
        console.log(Kakao.isInitialized());
    </script>
</head>
<body>

        
<form name="myForm">
<input type="hidden" id="user-id" name="id" />
<input type="hidden" id="user-name" name="name" />
<input type="hidden" id="is-kakao" name="iskakao" value="yes" />

<div class="modal-dialog">
		<div class="modal-content">
			 <div class="modal-header">
				<h1 class="text-center">마켓컬리 로그인</h1>
             </div>
                <div class="modal-body">
                    <div class="form-group">
                    	<a href="/user/login" class="btn btn-block btn-lg btn btn-secondary btn_login">마켓컬리 로그인</a>
                        <a href="/adminmain" class="btn btn-block btn-lg btn btn-primary btn_login">관리자모드로그인</a>
                      	<a id="kakao-login-btn" class="btn btn-block btn-lg btn btn-warning btn_login">카카오로그인</a>
                    </div>
                </div>
            </div>
        </div>
  <script type="text/javascript">
  function gopagePost() { 
	  document.myForm.action="/user/login"; 
	  document.myForm.method="post"; 
	  
	  document.myForm.submit();
  }
    Kakao.Auth.createLoginButton({
      container: '#kakao-login-btn',
      success: function(authObj) {	// authObj 인증에서 토큰을 받기위한 요청
        Kakao.API.request({
          url: '/v2/user/me',		// 사용자 정보를 가져옴(토큰을 받음) 24시간동안 탭끄기전까지
          success: function(res) {
            //alert(JSON.stringify(res))	 
           	document.getElementById("user-id").value = res.id;
           	document.getElementById("user-name").value = res.properties.nickname;
           	gopagePost();
          },
          fail: function(error) {
            alert('정보를 가져오지 못하였습니다.: ' + JSON.stringify(error))
          },
        })
      },
      fail: function(err) {
        alert('인증에 실패하였습니다.: ' + JSON.stringify(err))
      },
    })
  </script>
  </form>
</body>
</html>