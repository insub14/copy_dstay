<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Kimi is a curated foods and beverages artisans.">
    <meta name="author" content="Johnson Chandra, Allysa Prabandani, Philipus Herlambang, Maya Editorial">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="mobile-web-app-capable" content="yes">


    <meta name="twitter:card" content="summary">
    <meta name="title" content="Back to Kimi">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Content-Language" content="en-id">


    <!-- open graph metadata facebook, slack, whatsapp line -->
    <meta property="fb:app_id" content="150112802189143"/>
    <meta property="og:locale" content="en_US" />
    <meta property="og:title" content="Back to Kimi" />
    <meta property='og:site_name' content='Kimi | Curated Foods and Beverages' />
    <meta property="og:url" content="http://kimistatic.s3-website-ap-southeast-1.amazonaws.com/" />
    <meta property="og:description" content="Kimi is a curated foods and beverages artisans." />
    <meta property='og:image' content="https://s3-ap-southeast-1.amazonaws.com/kimistatic/images/apple-touch-icon.png" />


    <!-- open graph metadata twitter -->
    <meta name="twitter:title" content="Back to Kimi">
    <meta name="twitter:url" content="http://www.backtokimi.com">
    <meta name="twitter:description" content="Kimi is a curated foods and beverages artisans.">
    <meta name="twitter:image" content="https://s3-ap-southeast-1.amazonaws.com/kimistatic/images/apple-touch-icon.png">
    <meta name="twitter:site" content="@backtokimi">
    
    <link rel="icon" href="https://s3-ap-southeast-1.amazonaws.com/kimistatic/images/favicon.ico">
    <link rel="apple-touch-icon" href="https://s3-ap-southeast-1.amazonaws.com/kimistatic/images/apple-touch-icon.png">
	
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
	<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" crossorigin="anonymous"> 
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" crossorigin="anonymous"> -->


    <!-- Bootstrap core CSS -->
    <link href="resources/css/2_bak/bootstrap.min.css?after" rel="stylesheet">
    <link href="resources/css/2_bak/kimi.css" rel="stylesheet">
    <link href="resources/css/2_bak/font-awesome.min.css?after" rel="stylesheet">
	<title>loginForm</title>
<!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="http://ricostacruz.com/jquery.transit/jquery.transit.min.js"></script>


    <!-- Boot Strap -->
    <link href="resources/css/2_bak/bootstrap.min.css?after" rel="stylesheet">

    <!-- Template css-->
    <link href="resources/css/2_bak/kimi.css" rel="stylesheet">

    <!-- Custom css -->
    <link href="resources/css/2_bak/logo-top.css" rel="stylesheet">
    <link href="resources/css/2_bak/top-menu.css" rel="stylesheet">
    <link href="resources/css/2_bak/mainBanner.css" rel="stylesheet">

    <!-- Custom JavaScript-->
    <script type="text/javascript" src="resources/js/2_bak/mobile-menu.js"></script>
    <script type="text/javascript" src="resources/js/2_bak/mainBanner.js"></script>

    <style>
    html, body {
        height: 100%;
        margin: 0px;
        padding: 0px;
        background:rgb(245, 245, 245);
    }
    html {
        padding-bottom: 50px;
    min-height: 100%;
    box-sizing: border-box;
    -moz-box-sizing: border-box;
    position: relative;
    }

.modal {
        text-align: center;
}
 
@media screen and (min-width: 768px) { 
        .modal:before {
                display: inline-block;
                vertical-align: middle;
                content: " ";
                height: 100%;
        }
}
 
.modal-dialog {
        display: inline-block;
        text-align: left;
        vertical-align: middle;
}
.p-3 {
  padding: 5px;
}


    /* 테스트용 CSS */
    </style>
</head>
<!--구글로 로그인  -->
<script src="https://apis.google.com/js/platform.js" async defer></script>
<body>
<jsp:include page="../1_common/menubar.jsp"/>

    
    <div class="container">

    <div class="kimi-container">
        <!--breadcrumb start-->
        <ol class="breadcrumb hidden-xs">
            <li><a href="home.do">Home</a></li>
            <li class="active">로그인</li>
        </ol>

        <div class="clearfix"></div>

<!--         <div class="row">
            <div class="col-md-12 col-md-offset-12"> -->
        <div class="row" >
                    <div class="box-bg-white col-md-6 col-xs-6 form-medium-padding">
                        <h3 class="text-center text-gray-1">디스테이 로그인</h3>
                        <!-- <div class="clearfix maya-tiny-padding"></div> -->
                        
                        <div class="clearfix maya-small-padding"></div>

                        <form action="login.do" method="post">
                            <div class="form-group">
                            	<c:if test="${empty findEmail }">
                                <input type="email" name="email" class="form-control" id="exampleInputEmail1" placeholder="이메일" required>
                            	</c:if>
                            	<c:if test="${!empty findEmail }">
                            	<input type="email" name="email" class="form-control" value="${findEmail }" readonly>
                            	</c:if>
                            </div>
                            <div class="form-group">
                                <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="비밀번호" required>
                            </div>
                             <div class="checkbox" style="float:left;">
                                <!-- <label>
                                    <input type="checkbox"> <span class="text-gray-2 helvetica-12">아이디 기억하기</span>
                                </label> -->
                            </div> 
                            <!--비밀번호찾기  -->
                                                        <div class="checkbox" align="right" style="float:right">
                                                        <div class="clearfix maya-tiny-padding"></div>
                                 <label>
                                    <button type="button" onclick="location.href='findEmailForm.do';" class="btn btn-outline-primary"><span class="text-gray-2 helvetica-12">이메일아이디 찾기</span></button>
                                </label>                       
                                <label>
                                    <button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo"><span class="text-gray-2 helvetica-12">비밀번호찾기</span></button>
                                </label>
                            </div>
                            
                           <button type="submit" class="btn btn-block button-green-free btn-lg">로그인</button>
                        </form>
                        <div class="clearfix maya-tiny-padding"></div>
                        <c:if test="${empty loginMsg }">
                        <p class="text-center">아직 회원이 아니신가요&nbsp;<a href="registerForm.do" class="text-secondary">&nbsp;회원가입</a></p>
                       <!--  <p class="text-center">비회원으로 주문하셨나요&nbsp;<a href="nonMemOrderViewForm.me" class="text-secondary">&nbsp;비회원주문조회</a></p> -->
                        <!-- <div class="clearfix maya-small-padding"></div> -->
                        </c:if>
                        <c:if test="${!empty loginMsg }">
                        <p class="text-center" style="color:red">${loginMsg }</p>
                        </c:if>
                        <div class="clearfix maya-tiny-padding"></div>

                                                <div class="row">
                            <div class="col-md-12">
                                <button class="button-connect-google btn-block" onclick="init()" id="googleLoginbtn"><i class="fa fa-google" style="font-size:24px;margin-right:18px"></i>구글로 로그인하기</button>
                            </div>
                        </div> 
                        
                                                <div class="row">
                            <div class="col-md-12">
                                <button class="button-connect-naver btn-block"><img src="resources/images/2_bak/naver_icon_img.PNG">네이버로 로그인하기</button>
                            </div>
                        </div>
                        
                        						<div class="row">
                            <div class="col-md-12">
                                <button class="button-connect-kakao btn-block"><img src="resources/images/2_bak/kakaolink_btn_small.png">카카오로 로그인하기</button>
                            </div>
                        </div>

                                <!-- 비밀번호 모달창 -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel" align="left" style="font-size:12px">등록하신 이메일아이디로 임시비밀번호를 발송해 드립니다</h5>
        <!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close"> -->
         <!--  <span aria-hidden="true">&times;</span> -->
       <!--  </button> -->
      </div>
        <form id="modalSendAnEmailForm" method="post">
      <div class="modal-body">
          <div class="form-group">
            <label for="recipient-name" class="col-form-label" style="float:left">이메일아이디</label>
            <input type="email" class="form-control" id="recipient-name" name="email">
          </div>
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-outline-primary" >비밀번호 발송</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
      </div>
        </form>
    </div>
  </div>
</div>
                    </div>
                    
<%-- 오른쪽 --%>
                                        <div class="box-bg-white col-md-6 col-xs-6 form-medium-padding">
                        <h3 class="text-center text-gray-1">비회원 주문 조회</h3>
                        <div class="clearfix maya-small-padding"></div>
						
                        <form action="reviewNonMemberOrder.do" method="post">
                            <!-- <div class="form-group">
                                <input type="text" class="form-control" id="business_name" placeholder="이름" required>
                            </div> -->
                            <div class="form-group">
                                <input type="text" class="form-control" id="tagline" placeholder="주문 번호" required name="goNo">
                            </div>
<!--                             <div class="form-group">
                                <input type="email" class="form-control" id="bank_account" placeholder="이메일">
                            </div> -->
                            <div class="form-group">
                                <input type="tel" class="form-control" id="account_number" placeholder="휴대폰 번호" required name="phone">
                            </div>

<!--                             <div class="form-group">
                                <input type="text" class="form-control" id="bank_account_name" placeholder="Bank Account Name">
                            </div> -->
							<div class="clearfix maya-small-padding"></div>
							<div class="clearfix maya-tiny-padding"></div>
                            <button type="submit" class="btn btn-block button-green-free btn-lg">조회 하기</button>
                        </form>
                        <div class="clearfix maya-tiny-padding"></div>
                       
                        <p class="text-center">회원이 아니신가요 &nbsp;<a href="registerForm.do" class="text-secondary">&nbsp;회원가입</a></p>
                        <!--  -->
                        <div class="clearfix maya-tiny-padding"></div>
                        <div class="clearfix maya-tiny-padding"></div>
                        <div class="clearfix maya-tiny-padding"></div>
                        <div class="clearfix maya-tiny-padding"></div>
                        <div class="clearfix maya-tiny-padding"></div>
                        <div class="clearfix maya-tiny-padding"></div>
                        <div class="clearfix maya-tiny-padding"></div>
                        <div class="clearfix maya-tiny-padding"></div>
                        <div class="p-3"></div>
                        
                        
                                                <!-- <div class="row">
                            <div class="col-md-12" >
                                <button class="button-connect-google btn-block"><i class="fa fa-google" style="font-size:24px;margin-right:18px"></i>구글로 로그인하기</button>
                            </div>
                        </div>
                        
                                                <div class="row">
                            <div class="col-md-12">
                                <button class="button-connect-naver btn-block"><img src="resources/images/naver_icon_img.PNG">네이버로 로그인하기</button>
                            </div>
                        </div>
                        
                        						<div class="row">
                            <div class="col-md-12">
                                <button class="button-connect-kakao btn-block"><img src="resources/images/kakaolink_btn_small.png">카카오로 로그인하기</button>
                            </div>
                        </div> 
                    </div>
<%-- 오른쪽 끝 --%>
                	
                </div>
    </div>


</div><!-- /.container -->

<!--include footer-->
<div class="include-footer"></div>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="resources/js/2_bak/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="resources/js/2_bak/bootstrap.min.js"></script>

<!--kimi basic js-->
<script src="resources/js/2_bak/kimi.js"></script>

<script>
	$(document).ready(function() {
		$("#modalSendAnEmailForm").on("submit",function() {
			$.ajax({
				url:"sendAnEmail.do",
				method:"post",
				data:$("#modalSendAnEmailForm").serialize(),
				error:function() {
					console.log("disconnected");
				},
				success:function() {
					console.log("connected");
				}
			})
		})
	})
		/* 구글로 로그인 */
		function init() {
		  console.log('call init ');
		  gapi.load('auth2', function() {
		    /* Ready. Make a call to gapi.auth2.init or some other API */
		    console.log("loaded auth2 ");
		    var googleAuth = gapi.auth2.init({
		    	  client_id: "772225320155-psolb8vekpte4t7h2bl88b0tt3p3sfn6.apps.googleusercontent.com"
		    })
		    googleAuth.then(function() {
		    	console.log("googleAuth initialized");
		    	if(googleAuth.isSignedIn.get()) {
		    		console.log("logined");
		    		/* googleAuth.signIn().then(function() {
		    			console.log("userLogin"); 
		    		})*/
		    		googleAuth.signIn();
		    		var googleUser = googleAuth.currentUser.get();
		    			//console.log(google);
		    			/* if(googleUser.isSignedIn()) {
		    				console.log("userLogin");
		    			} */
		    		  var profile = googleUser.getBasicProfile();
			    		  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
			    		  console.log('Name: ' + profile.getName());
			    		  console.log('Image URL: ' + profile.getImageUrl());
			    		  console.log('Email: ' + profile.getEmail());
			    	  var googleEmail = profile.getEmail();
			    	  var id_token = googleUser.getAuthResponse().id_token;
			    	  	  //console.log(id_token);
			    	  	  $.ajax({
			    			  url:"googleLogin.do",
			    			  method:"post",
			    			  data:{googleEmail:googleEmail,idToken:id_token},
			    			  error:function() {
			    				  console.log("googleUser loading failed");
			    			  },
			    			  success:function() {
			    				  console.log("googleUser loading proceeded");
			    			  }
			    		  })
			    		  
		    			 
		    	}else {
		    		console.log("unlogined");
		    	}
		    }, function() {
		    	console.log("googleAuth failed to initialize");
		    })
		  });
		}
</script>
<!--구글로 로그인  -->
<script src="https://apis.google.com/js/platform.js" async defer></script>
</body>
</html>