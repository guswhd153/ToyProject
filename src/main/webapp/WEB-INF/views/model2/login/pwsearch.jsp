<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<style type="text/css">
    body {
        text-align: center;
        background-image: url("./images/로그인 배경.jpg");
    }
    h3 {
        margin-top: 8px;
        margin-bottom: 8px;
    }
    .idsearch {
        width: 380px;
        height: 364px;
        margin: 0 auto;
        background-color: white;
        margin-top: 286.5px; 
    }
    .btn_group {
        margin-top: 25px;
        margin-right: 56px;
        margin-bottom: 15px;
        float: right;
    }
    #tmpwsend {
        width: 140px;
    }
    
    #cancel {
        width: 50px;
    }
    #userid, #email {
        width: 260px;
        height: 25px;
        margin-top: 20px;
    }
    .modal {
        position: fixed;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background: white;
        border: 1px solid black;
        width: 400px;
        height: 100px;
    }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js" ></script>
<!-- 제이쿼리 ui 라이브러리 추가 -->
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
$(function () {
	// 취소 버튼 누르면 로그인 창으로 이동
	$('#cancel').on('click', function () {
		$(location).attr('href', 'login.injiTech');
	});
	
	// 임시비밀번호 발급 누를 때
	$('#tmpwsend').on('click', function () {
		$('.modal').fadeIn();
	});q
	
	$('#check').click(function () {
        $('.modal').fadeOut();
    });
});  
</script>
</head>
<body>
    <div class="idsearch">
        <img id="image" src="./images/회사로고.JPG" style="margin-top: 25px;"/>
        <form action="">
            <h3><b>PW 찾기</b></h3>
            <input type="text" id="userid" name="userid" placeholder="아이디 입력"/>
            <input type="text" id="email" name="email" placeholder="이메일 입력" />
            <div class="btn_group">
                <input type="button" id="tmpwsend" value="임시비밀번호 발급" />
                <input type="button" id="cancel" value="취소" />
            </div>
        </form>
    </div>
    <!-- 서브 탭 -->
	<div class="modal" style="display: none">
	    <div class="modal-content">
	        <p>해당 이메일로 임시 비밀번호가 전송되었습니다.</p>
	    </div>
	    <input id="check" type="button" value="확인">
	</div>
</body>
</html>