<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!String email = "";
	int memberId = 0;
	Boolean login = false;%>
<%
	if (session.getAttribute("member") != null) {
		email = (String) ((MemberVO) session.getAttribute("member")).getEmail();
		memberId = ((MemberVO) session.getAttribute("member")).getMemberId();
	}
	if (email.length() >= 1 && email.matches("^[_a-z0-9-]+(.[_a-z0-9-]+)*@(?:\\w+\\.)+\\w+$")) {
		login = true;
	}
	pageContext.setAttribute("login", login);
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>인생을 바꿀 한끼, 끼니끼리</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- 한글 관련 css 적용 -->
<link rel="stylesheet" href="./../resources/css/korean.css">
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">
<link rel="stylesheet" href="./../resources/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="./../resources/css/animate.css">
<link rel="stylesheet" href="./../resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="./../resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="./../resources/css/magnific-popup.css">
<link rel="stylesheet" href="./../resources/css/aos.css">
<link rel="stylesheet" href="./../resources/css/ionicons.min.css">

<link rel="stylesheet" href="./../resources/css/flaticon.css">
<link rel="stylesheet" href="./../resources/css/icomoon.css">
<link rel="stylesheet" href="./../resources/css/style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
#bid_price:focus {
	outline: none;
}
</style>
</head>
<body>

	<!-- 헤더 -->
	<%@include file="/WEB-INF/tiles/header.jsp"%>
	<!-- 헤더 종료 -->

	<div class="hero-wrap"
		style="background-color: #2DAD92; height: 120px;"></div>


	<section class="ftco-section ftco-degree-bg">
		<div class="container">
			<div style="width: 75%; height:25%; margin: 0 auto; text-align: center; font-size: 2.5vmin; font-weight: bold;">
				<p id="count"></p>
			</div>
			<div style="width: 75%; height:75%; margin: 0 auto;">
				<img alt="" src="../upload/qrcheck/qr_img.png" style="width: 100%; height: 100%;">

			</div>
		</div>
	</section>
	<!-- .section -->

	<!-- footer.html -->
	<%@include file="/WEB-INF/tiles/footer.jsp"%>



	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>
	<script>
		$(function() {
			//카운트 시작 숫자
            var count = 30;
            //카운트다운함수
            var countdown = setInterval(function(){
            $("#count").html(count + "초 후 이전페이지로 이동합니다.");
                //1초면 초기화 후 이동
                if (count == 1) {
                    clearInterval(countdown);
                    $(location).attr('href', '../mypage/contactHistory.do')

                    }
                count--;//카운트 감소
            }, 1000);
		})
	</script>

	<script src="./../resources/js/jquery.min.js"></script>
	<script src="./../resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="./../resources/js/popper.min.js"></script>
	<script src="./../resources/js/bootstrap.min.js"></script>
	<script src="./../resources/js/jquery.easing.1.3.js"></script>
	<script src="./../resources/js/jquery.waypoints.min.js"></script>
	<script src="./../resources/js/jquery.stellar.min.js"></script>
	<script src="./../resources/js/owl.carousel.min.js"></script>
	<script src="./../resources/js/jquery.magnific-popup.min.js"></script>
	<script src="./../resources/js/aos.js"></script>
	<script src="./../resources/js/jquery.animateNumber.min.js"></script>
	<script src="./../resources/js/scrollax.min.js"></script>
	<script src="./../resources/js/main.js"></script>
	<script src="./../resources/js/bid.js"></script>

</body>
</html>