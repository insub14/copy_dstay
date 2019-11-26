<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>naverLogin</title>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
<script type="text/javascript">
  var naver_id_login = new naver_id_login("${naverClientId}", "http://localhost:9020/dstay/naverLogin.do");
  // 네이버 사용자 프로필 조회
  naver_id_login.get_naver_userprofile("naverSignInCallback()");
  // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
  function naverSignInCallback() {
    $.ajax({
    	url:"ajaxNaverUserprofile.do",
    	method:"post",
    	data:{email:naver_id_login.getProfileData('email'),
    		  nickName:naver_id_login.getProfileData('nickname'),
    		  id:naver_id_login.getProfileData('id')},
    	error:function() {
    		console.log("failed to login with naver");
    	},
    	success:function(msg) {
    		if(msg == "apiLoginSuccess") {
	    		location.href="home.do";
    		}else {
    			console.log("go next");
    		}
    	}
    })
  }
</script>
</body>
</html>