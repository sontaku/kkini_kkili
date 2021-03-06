<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%!
	String email = "";
	String name = "";
	int auth = 0;
	int memberId = 0;
	Boolean login = false;
%>
<%
	if( session.getAttribute("member")!= null ) {
		email = (String) ((MemberVO) session.getAttribute("member")).getEmail();
		name = (String) ((MemberVO) session.getAttribute("member")).getName();
		auth = ((MemberVO) session.getAttribute("member")).getAuth();
		memberId = ((MemberVO) session.getAttribute("member")).getMemberId();
	}
	if(email.length()>=1 && email.matches("^[_a-z0-9-]+(.[_a-z0-9-]+)*@(?:\\w+\\.)+\\w+$")) {
		login = true;
	} 
	pageContext.setAttribute("login", login);
%>

<!DOCTYPE html>
<html lang="ko">
<head>

<title>인생을 바꿀 한끼, 끼니끼리</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- 한글 관련 css 적용 -->
<link rel="stylesheet" href="./../resources/css/korean.css">
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Alex+Brush"	rel="stylesheet">
<link rel="stylesheet" href="./../resources/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="./../resources/css/animate.css">
<link rel="stylesheet" href="./../resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="./../resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="./../resources/css/magnific-popup.css">
<link rel="stylesheet" href="./../resources/css/aos.css">
<link rel="stylesheet" href="./../resources/css/ionicons.min.css">
<link rel="stylesheet" href="./../resources/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="./../resources/css/jquery.timepicker.css">
<link rel="stylesheet" href="./../resources/css/flaticon.css">
<link rel="stylesheet" href="./../resources/css/icomoon.css">
<link rel="stylesheet" href="./../resources/css/style.css">


</head>

<body>

	<!-- 헤더 -->
	<%@include file="/WEB-INF/tiles/header.jsp"%>
	<!-- 헤더 종료 -->

	<div class="hero-wrap bg-mint" style="height: 120px">
		<div class="overlay"></div>
		<div class="container"></div>
	</div>

	<section class="ftco-section ftco-degree-bg">

		<div class="container">
			<h2 class="mb-4 text-dark">컨택 조회</h2>
			<div class="row">
				<div class="col-lg-3 sidebar ftco-animate">
					<div class="sidebar-wrap bg-light ftco-animate">
						<h3 class="heading mb-4">검색하기</h3>
						<form
							action="${pageContext.request.contextPath}/contact/search.do"
							method="get">
							<div class="fields">
								<div class="form-group">
									<input type="text" class="form-control" name="keyword"
										placeholder="관심 키워드 입력">
								</div>
								<div class="form-group">
									<div class="select-wrap one-third">
										<div class="icon">
											<span class="ion-ios-arrow-down"></span>
										</div>
										<select name="region" id="" class="form-control"
											placeholder="Keyword search">
											<option value="0">지역</option>
											<option value="1">서울 / 경기 / 인천</option>
											<option value="2">강원</option>
											<option value="3">대전 / 세종 / 충북 / 충남</option>
											<option value="4">광주 / 전북 / 전남</option>
											<option value="5">부산 / 대구 / 울산 / 경북 / 경남</option>
											<option value="6">제주</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<input type="text" id="checkin_date" class="form-control"
										name="startdate" placeholder="시작일">
								</div>
								<div class="form-group">
									<input type="text" id="checkout_date" class="form-control"
										name="enddate" placeholder="마감일">
								</div>
								<div class="form-group"></div>
								<div class="form-group">
									<input type="submit" value="검색"
										class="btn btn-primary py-3 px-5">
								</div>
							</div>
						</form>
					</div>
				</div>

				<div class="col-lg-9">
					<div class="col-md-12">
						<!-- 로그인 유저가 호스트일때 -->
						<%if(login && auth == 1) { %>
						<!-- 유효한 마감시간의 컨택이 있을 때 -->
						<c:if test="${contactOne.NAME != null}">
						<p class="name">${contactOne.NAME}님이 마련한 컨택이 있습니다.</p>
						<div class="item border-top">
								<div class="testimony-wrap d-flex">
									<a href="${pageContext.request.contextPath}/host/profile.do?hostId=<%=memberId%>">
										<div>
											<div class="user-img mb-4"
												style="background-image: url('./../upload/host/${contactOne.HOST_PIC}')">
											</div>
											<div>
												<p style="font-size: 2.0vmin; margin-bottom: 0%; text-align: center; color: black; font-weight: bold;">${contactOne.NAME}</p>
												<p style="font-size: 1.7vmin; text-align: center; color: dimgrey;">${contactOne.COMPANY}</p>
											</div>
										</div>
									</a>
									<div class="text ml-4">

										<p style="font-size: 20px; font-weight: bolder;">${contactOne.CONTACT_INTRO}</p>
										<span class="position">일시 : ${contactOne.MEETING_TIME}</span><br />
										<span class="position">상호명 : ${contactOne.STORE_NAME}</span><br />
										<span class="position">장소 : ${contactOne.LOCATION}</span>
										<p class="name count_time_con">마감 시간 : <span class="count_time">${contactOne.REGI_DATE }</span></p>
										<p class="name">현재 최고가 : ${contactOne.LAST_VALUE}원</p>
										<p>
											<a href="${pageContext.request.contextPath}/contact/bid.do?contact_id=${contactOne.CONTACT_ID}"
												class="btn btn-primary btn-outline-primary mt-1 px-3 pt-1 mb-0 float-right contact-submit">컨택
												신청</a>
										</p>
									</div>
								</div>
							</div>
						
						</c:if>
						<c:if test="${contactOne.NAME == null}">
							컨택을 통해 회원님의 경험을 공유해주세요. <a href="insert.do" style="color: #2DAD92; text-decoration: underline;">생성하기</a>
						</c:if>
						<br/>  
						<hr/>
						<br/>
						<%} %>
						
						<!-- 로그인 유저가 게스트일때 -->
						<%if(login && auth == 0) { %>
							호스트가 되어 회원님의 경험을 공유해주세요. <a href="" style="color: #2DAD92; text-decoration: underline;">호스트 인증신청</a>
							<br/>  
							<hr/>
							<br/>
						<%} %>
						
						<c:forEach items="${contactList }" var="contact">
							<!--  ${contactList }-->
							<div class="item border-top">
								<div class="testimony-wrap d-flex">
									<a href="${pageContext.request.contextPath}/host/profile.do?hostId=${contact.HOST_ID}">
										<div>
											<div class="user-img mb-4"
												style="background-image: url('./../upload/host/${contact.HOST_PIC}')">
											</div>
											<div>
												<p style="font-size: 2.0vmin; margin-bottom: 0%; text-align: center; color: black; font-weight: bold;">${contact.NAME}</p>
												<p style="font-size: 1.7vmin; text-align: center; color: dimgrey;">${contact.COMPANY}</p>
											</div>
										</div>
									</a>
									<div class="text ml-4">

										<!--  <p class="name">${contact.NAME}</p><span>${contact.COMPANY}</span>-->
										<p style="font-size: 20px; font-weight: bolder;">${contact.CONTACT_INTRO}</p>
										<span class="position">일시 : ${contact.MEETING_TIME}</span><br />
										<span class="position">상호명 : ${contact.STORE_NAME}</span><br />
										<span class="position">장소 : ${contact.LOCATION}</span>
										<p class="name count_time_con">마감 시간 : <span class="count_time">${contact.REGI_DATE }</span></p>
										<p class="name">현재 최고가 : ${contact.LAST_VALUE}원</p>
										<p>
											<a href="${pageContext.request.contextPath}/contact/bid.do?contact_id=${contact.CONTACT_ID}"
												class="btn btn-primary btn-outline-primary mt-1 px-3 pt-1 mb-0 float-right contact-submit">컨택
												신청</a>
										</p>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>

			<!-- 하단 숫자 -->
			<div class="row mt-5">
				<div class="col text-center">
					<div class="block-27" id="pagingDiv">
						<ul>
							<c:if test="${paging.prev}">
								<li><a href="${paging.startPage - 1 }">이전</a></li>
							</c:if>
							<c:forEach var="num" begin="${paging.startPage}"
								end="${paging.endPage }">
								&nbsp;<li><a href="${num }">${num }</a></li>&nbsp;
							</c:forEach>
							<c:if test="${paging.next}">
								<li><a id="next" href="${paging.endPage + 1 }">다음</a></li>
							</c:if>
						</ul>
					</div>
				</div>
			</div>

			<form id="pagingFrm" name="pagingForm" action="list.do" method="get">
				<input type="hidden" id="pageNum" name="pageNum"
					value="${paging.cri.pageNum }"> <input type="hidden"
					id="amount" name="amount" value="${paging.cri.amount }">
			</form>
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
	<script src="./../resources/js/bootstrap-datepicker.js"></script>
	<script src="./../resources/js/jquery.timepicker.min.js"></script>
	<script src="./../resources/js/scrollax.min.js"></script>
	<script src="./../resources/js/range.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="./../resources/js/google-map.js"></script>
	<script src="./../resources/js/main.js"></script>
	<script src="./../resources/js/contact.js"></script>


</body>
</html>