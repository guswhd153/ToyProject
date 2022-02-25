<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style type="text/css">
    body {
        text-align: center;
        background-image: url("./images/로그인 배경.jpg");
    }
    h3 {
        margin-top: 8px;
        margin-bottom: 8px;
    }
    .signupbox {
        width: 380px;
        height: 1050px;
        margin: 0 auto;
        background-color: white;
        margin-top: 100px;       
    }
    #username {
        width: 260px;
        height: 25px;
        margin-top: 15px;
    }
    #userid {
        width: 260px;
        height: 25px;
        margin-top: 15px;
    }
    #userpw {
        width: 260px;
        height: 25px;
        margin-top: 15px;
    }
    #userpwcheck {
        width: 260px;
        height: 25px;
        margin-top: 15px;
    }
    #email {
        width: 113px;
        height: 25px;
        margin-top: 15px;
    }
    #mail {
        width: 120px;
        height: 30px;
        margin-top: 15px;
    }
    #chkNotice1 {
        text-align: left;
        font-size: 3px;
        height: 5px;
        margin-left: 55px;
    }
    #chkNotice2 {
        text-align: left;
        font-size: 5px;
        height: 5px;
        margin-left: 55px;
    }
    .personbox {
        width: 268px;
        height: 458px;
        position: relative;
        overflow: auto;
        margin : auto;
        margin-top: 15px;
        padding: 5px;
        border: 1px solid #dadada;
        background: #fff;
        box-sizing: border-box;
        font-size: 10px;
    }
    p {
       text-align: left;
       margin-top: 4px;
       font-size: 10px;
    }
    .btn_group {
        float: right;
        margin-right: 56px;
    }
    .agree {
        margin-top : 10px;
        margin-bottom : 30px;
        margin-right: 50px;
        width: 250px;
        float: right;
    }
    .txt {
        font-size: 12px;
    }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
$(function () {
	// 비밀번호 8자 16자 이내 검사
	$('#userpw').keyup(function () {
        $('#chkNotice1').html('');
    });
	
	$('#userpw').keyup(function () {
		var pw = $('#userpw').val();
		
		// 영문, 숫자, 특수기호 결합 비밀번호
		var pattern1 = /[0-9]/;
		var pattern2 = /[a-zA-z]/;
		var pattern3 = /[~!@#$%<>^&*]/;
	    
		if(!pattern1.test(pw)||!pattern2.test(pw)||!pattern3.test(pw)||
			pw.length < 8 || pw.length > 16) {
			$('#chkNotice1').html('영문, 숫자, 특수기호를 사용해 8자 이상 16자 이내로 입력');
            $('#chkNotice1').css('color', 'red');	
		}
		if(pw == '') {
			$('#chkNotice1').html(''); 	
		}
	});
	
	// 비밀번호 일치 검사
	$('#userpw').keyup(function () {
		$('#chkNotice2').html('');
	});
	
	$('#userpwcheck').keyup(function () {
		if($('#userpw').val() != $('#userpwcheck').val()) {
			$('#chkNotice2').html('비밀번호 일치하지 않음');
			$('#chkNotice2').css('color', 'red');
		} else if($('#userpw').val() == '' && $('#userpwcheck').val() == '') {
            $('#chkNotice2').html('');
        } else if($('#userpw').val() != '' && $('#userpwcheck').val() == '') {
            $('#chkNotice2').html('');
        } else if($('#userpw').val() == '' && $('#userpwcheck').val() != '') {
            $('#chkNotice2').html('');
        } else {
			$('#chkNotice2').html('비밀번호 일치함');
			$('#chkNotice2').css('color', 'green');
		}
	});
	
	// 중복 아이디 검사
	
    // 회원가입 버튼 활성화 검사
    $('#cbx').click(function() {
    	var name = $('#username').val().trim();
    	var id = $('#userid').val().trim();
    	var pw = $('#userpw').val().trim();
    	var pwchk = $('#userpwcheck').val().trim();
    	var email = $('#email').val().trim();
    	var email_c = $('#mail option:checked').val();
    	
    	if($('#cbx').is(':checked') == true && name != ''
    			&& id != '' && pw != '' && pwchk != ''
    			&& email != '' && email_c != '') {
            $('#signup').prop('disabled', false);
        } else if ($('#cbx').is(':checked') == false && name != ''
        	   || id != '' || pw != '' || pwchk != ''
        	   || email != '' || email_c != '' ) {
        	$('#signup').prop('disabled', true);
        }
    });
	
	// 위에서 입력하면서 검사 다 하고 약관까지 동의 후
	// 회원가입 버튼 눌렀을 때 동작
	$('#signup').click(function () {
		$(document).logchk.submit(); 
	});
	
	// 취소 버튼 눌렀을 때 로그인 페이지로 이동
	$('#cancel').click(function () {
		$(location).attr("href", "login.injiTech");
	})
});
</script>
</head>
<body>
	<div class="signupbox">
	   <img src="./images/회사로고.JPG" style="margin-top: 25px;"/>
	   <h3>회원가입</h3>
	   <form action="logchk.injiTech" name="logchk" method="post">
	        <input id="username" type="text" name="username" placeholder="이름 입력" />
	        <br />
	        <input id="userid" type="text" name="userid" placeholder="아이디 입력" />
	        <br />
	        <input id="userpw" type="password" name="userpw" placeholder="비밀번호 입력" maxlength="16"/>
	        <div id="chkNotice1"></div>
	        <input id="userpwcheck" type="password" name="userpwcheck" placeholder="비밀번호 확인" maxlength="16"/>
	        <div id="chkNotice2"></div>
	        <input id="email" type="text" placeholder="이메일 입력">&nbsp;@
	        <select id="mail">
	            <option value="">선택</option>
	            <option value="naver.com">naver.com</option>
	            <option value="gmail.com">gmail.com</option>
	            <option value="daum.net">daum.net</option>
	        </select>
	        <!-- 개인정보 보호 약관 -->
	        <h4>개인정보 보호 약관</h4>
	        <div class="personbox">
	           <p>
	               개인정보보호법에 따라 <b>인지테크</b>에 회원가입 신청하시는 분께
	               수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간,
	               동의 거부권 및 동의 거부 시 불이익에 관한 사항을 안내 드리오니
	               자세히 읽은 후 동의하여 주시기 바랍니다.
	           </p>
	           <p>
	               <b>1. 수집하는 개인정보</b><br />
	           </p>
	           <p>
					이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 네이버 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, 네이버는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.
					
					회원가입 시점에 네이버가 이용자로부터 수집하는 개인정보는 아래와 같습니다.
					- 회원 가입 시에 ‘아이디, 비밀번호, 이름, 생년월일, 성별, 휴대전화번호’를 필수항목으로 수집합니다. 만약 이용자가 입력하는 생년월일이 만14세 미만 아동일 경우에는 법정대리인 정보(법정대리인의 이름, 생년월일, 성별, 중복가입확인정보(DI), 휴대전화번호)를 추가로 수집합니다. 그리고 선택항목으로 이메일 주소를 수집합니다.
					- 단체아이디로 회원가입 시 단체아이디, 비밀번호, 단체이름, 이메일주소, 휴대전화번호를 필수항목으로 수집합니다. 그리고 단체 대표자명을 선택항목으로 수집합니다.
					서비스 이용 과정에서 이용자로부터 수집하는 개인정보는 아래와 같습니다.
					- 회원정보 또는 개별 서비스에서 프로필 정보(별명, 프로필 사진)를 설정할 수 있습니다. 회원정보에 별명을 입력하지 않은 경우에는 마스킹 처리된 아이디가 별명으로 자동 입력됩니다.
					
					- 네이버 내의 개별 서비스 이용, 이벤트 응모 및 경품 신청 과정에서 해당 서비스의 이용자에 한해 추가 개인정보 수집이 발생할 수 있습니다. 추가로 개인정보를 수집할 경우에는 해당 개인정보 수집 시점에서 이용자에게 ‘수집하는 개인정보 항목, 개인정보의 수집 및 이용목적, 개인정보의 보관기간’에 대해 안내 드리고 동의를 받습니다.
	           </p>
	           <p>
	               <b>2. 수집한 개인정보의 이용</b>
	           </p>
	           <p>
					네이버 및 네이버 관련 제반 서비스(모바일 웹/앱 포함)의 회원관리, 서비스 개발・제공 및 향상, 안전한 인터넷 이용환경 구축 등 아래의 목적으로만 개인정보를 이용합니다.
			   </p>
			   <p>
					- 회원 가입 의사의 확인, 연령 확인 및 법정대리인 동의 진행, 이용자 및 법정대리인의 본인 확인, 이용자 식별, 회원탈퇴 의사의 확인 등 회원관리를 위하여 개인정보를 이용합니다.
			   </p>
			   <p>
					- 콘텐츠 등 기존 서비스 제공(광고 포함)에 더하여, 인구통계학적 분석, 서비스 방문 및 이용기록의 분석, 개인정보 및 관심에 기반한 이용자간 관계의 형성, 지인 및 관심사 등에 기반한 맞춤형 서비스 제공 등 신규 서비스 요소의 발굴 및 기존 서비스 개선 등을 위하여 개인정보를 이용합니다.
			   </p>
               <p>
					- 법령 및 네이버 이용약관을 위반하는 회원에 대한 이용 제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에 지장을 주는 행위에 대한 방지 및 제재, 계정도용 및 부정거래 방지, 약관 개정 등의 고지사항 전달, 분쟁조정을 위한 기록 보존, 민원처리 등 이용자 보호 및 서비스 운영을 위하여 개인정보를 이용합니다.
               </p>
               <p>			
					- 유료 서비스 제공에 따르는 본인인증, 구매 및 요금 결제, 상품 및 서비스의 배송을 위하여 개인정보를 이용합니다.
			   </p>
               <p>
					- 이벤트 정보 및 참여기회 제공, 광고성 정보 제공 등 마케팅 및 프로모션 목적으로 개인정보를 이용합니다.
			   </p>
               <p>
					- 서비스 이용기록과 접속 빈도 분석, 서비스 이용에 대한 통계, 서비스 분석 및 통계에 따른 맞춤 서비스 제공 및 광고 게재 등에 개인정보를 이용합니다.
			   </p>
               <p>
					- 보안, 프라이버시, 안전 측면에서 이용자가 안심하고 이용할 수 있는 서비스 이용환경 구축을 위해 개인정보를 이용합니다.
	           </p>
	        </div>
	        <!-- 약관 동의 체크박스 -->
	        <div class="agree">
	           <label class="txt">상기 내용을 확인했으며 이에 동의합니다. </label>
	           <input type="checkbox" id="cbx" style="vertical-align: -2px;"/>
	        </div>
	        <!-- 회원가입 / 취소 버튼 -->
	        <div class="btn_group">
	           <input id="signup" type="submit" value="회원가입" disabled/>
	           <input id="cancel" type="button" value="취소" />
	        </div>
	    </form>
	</div>
</body>
</html>