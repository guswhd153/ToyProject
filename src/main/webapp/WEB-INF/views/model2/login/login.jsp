<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인지테크</title>
<style type="text/css">
    body {
        text-align: center;
        background-image: url("./images/로그인 배경.jpg");
    }
    h3 {
        margin-top: 8px;
        margin-bottom: 8px;
    }
    .loginbox {
        width: 380px;
        height: 400px;
        margin: 0 auto;
        background-color: white;
        margin-top: 286.5px;       
    }
    .btngroup {
        margin-top: 15px;
    }
    #userid {
        width: 260px;
        height: 25px;
        margin-top: 20px;
    }
    #userpw {
        width: 260px;
        height: 25px;
        margin-top: 15px;
    }
    #loginbtn{
        width: 268px;
        height: 40px;
        margin-top: 15px;
    }
    #idsearch, #pwsearch, #signup{
        width: 85.5px;
        height: 35px;
    }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
$(function () {
	$(document).on('click', '#signup', function () {
		$(location).attr('href', 'signup.injiTech');
	});
	
	$('#idsearch').on('click', function () {
		$(location).attr('href', 'idsearch.injiTech');
	});
	
	$('#pwsearch').on('click', function () {
        $(location).attr('href', 'pwsearch.injiTech');
    });
})
</script>
</head>
<body>
    <div class="loginbox">
         <img src="./images/회사로고.JPG" style="margin-top: 25px;"/>
         <h3><b>로그인</b></h3>
         <form action="">
	         <input id="userid" type="text" name="userid" placeholder="아이디 입력" />
	         <input id="userpw" type="password" name="userpw" placeholder="비밀번호 입력"/>
	         <br />
	         <input type="submit" id="loginbtn" value="로그인" />
         </form>
         <div class="btngroup">
	         <input type="button" id="idsearch" value="ID찾기" />
	         <input type="button" id="pwsearch" value="PW찾기" />
	         <input type="button" id="signup" value="회원가입" />
         </div>
    </div>
</body>
</html>