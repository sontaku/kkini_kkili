<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kk.domain.MemberVO" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 

	MemberVO member = null;
	if(session.getAttribute("member")!=null){
		member = (MemberVO) session.getAttribute("member"); 	
	}
	
	long time = System.currentTimeMillis(); 
	SimpleDateFormat simpl = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	String s = simpl.format(time);
	
	pageContext.setAttribute("today", s) ;
	
	
%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <title>끼니끼리 관리자페이지</title>
    <!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 10]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <meta name="keywords" content="bootstrap, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
    <meta name="author" content="Codedthemes" />
    <!-- Favicon icon -->
    <link rel="icon" href="./../resources/assets/images/favicon.ico" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
    <!-- waves.css -->
    <link rel="stylesheet" href="./../resources/assets/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="./../resources/assets/css/bootstrap/css/bootstrap.min.css">
    <!-- waves.css -->
    <link rel="stylesheet" href="./../resources/assets/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- themify-icons line icon -->
    <link rel="stylesheet" type="text/css" href="./../resources/assets/icon/themify-icons/themify-icons.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" type="text/css" href="./../resources/assets/icon/font-awesome/css/font-awesome.min.css">
    <!-- ico font -->
    <link rel="stylesheet" type="text/css" href="./../resources/assets/icon/icofont/css/icofont.css">
    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="./../resources/assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="./../resources/assets/css/jquery.mCustomScrollbar.css">
</head>

<body>
    <!-- Pre-loader start -->
    <div class="theme-loader">
        <div class="loader-track">
            <div class="preloader-wrapper">
                <div class="spinner-layer spinner-blue">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
                <div class="spinner-layer spinner-red">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>

                <div class="spinner-layer spinner-yellow">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>

                <div class="spinner-layer spinner-green">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Pre-loader end -->
    <div id="pcoded" class="pcoded">
        <div class="pcoded-overlay-box"></div>
        <div class="pcoded-container navbar-wrapper">
        
        <!-- 헤더  -->
            <nav class="navbar header-navbar pcoded-header"><%@include file ="header.jsp" %></nav>

            <div class="pcoded-main-container">
                <div class="pcoded-wrapper">
                
                 <!-- 사이드바  -->
                    <nav class="pcoded-navbar"><%@include file ="nav.jsp" %></nav>
                    
                    
                
                    <div class="pcoded-content">
                        <!-- Page-header start -->
                        
                        <!-- Page-header end -->
                        <div class="pcoded-inner-content">
                            <!-- Main-body start -->
                            <div class="main-body">
                                <div class="page-wrapper">
                                    <!-- Page-body start -->
                                    <div class="page-body">
                                       <!-- Background Utilities table start-->
                                        <div class="card">
                                            <div class="card-header">
                                                <h5>매칭 현황 조회</h5>
                                                <span>매칭 성공시 <code>일반 테이블</code>, 매칭 실패시 <code>노란색</code></span>
                                                <div class="card-header-right">
                                                    <ul class="list-unstyled card-option">
                                                        <li><i class="fa fa fa-wrench open-card-option"></i></li>
                                                        <li><i class="fa fa-window-maximize full-card"></i></li>
                                                        <li><i class="fa fa-minus minimize-card"></i></li>
                                                        <li><i class="fa fa-refresh reload-card"></i></li>
                                                        <li><i class="fa fa-trash close-card"></i></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="card-block table-border-style">
                                                <div class="table-responsive">
                                                    <table class="table table-hover">
                                                        <thead>
                                                            <tr>
                                                                <th>호스트이름</th>
                                                                <th>호스트 메일</th>
                                                                <th>호스트 전화</th>
                                                                <th>게스트 이름</th>
                                                                <th>게스트 메일</th>
                                                                <th>게스트 전화</th>
                                                                <th>컨택 등록일</th>
                                                                <th>컨택 제목</th>
                                                                <th>만남 장소(주소)</th>
                                                                <th>만남 시간</th>
                                                                <th>시작가</th>
                                                                <th>최종가</th>
                                                                <th>만남 성사</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
	                                                        <c:forEach items="${contactList}" var="contact">
		                                                        <c:if test="${contact.QR_CHECK == 1}">
		                                                        	<tr class="">
		                                                        </c:if>
		                                                        <c:if test="${contact.QR_CHECK != 1}">
		                                                        	<tr class="bg-warning">
		                                                        </c:if>
			                                                        	<td><a href="../host/profile.do?hostId=${contact.HOST_ID}">${contact.HNAME}</a></td>
			                                                            <td>${contact.HEMAIL}</td>
			                                                            <td>${contact.HTEL}</td>
			                                                            <td>${contact.NAME}</td>
			                                                            <td>${contact.EMAIL}</td>
			                                                            <td>${contact.TEL}</td>
			                                                            <td>${contact.REGI_DATE}</td>
			                                                            <td><a href="${contact.CONTACT_ID}">${contact.CONTACT_INTRO}</a></td>
			                                                            <td>${contact.STORE_NAME}(${contact.LOCATION})</td>
			                                                            <td>${contact.MEETING_TIME}</td>
			                                                            <td>${contact.START_VALUE}</td>
			                                                            <td>${contact.LAST_VALUE}</td>
			                                                            <c:if test="${contact.QR_CHECK eq 1}">
			                                                            		<td> 만남 완료 </td>
			                                                            </c:if>
			                                                            <c:if test="${contact.QR_CHECK eq 0}">
		                                                                	<c:if test="${contact.MEETING_TIME >= today }">
			                                                                	<td> 만남 예정 </td>
		                                                                	</c:if>
		                                                                	<c:if test="${contact.MEETING_TIME < today }">
			                                                                	<td> 만남 취소 </td>
		                                                                	</c:if>
	                                                            		</c:if>
                                                        			<tr>
                                                        	</c:forEach>
                                                            <!-- <tr class="bg-primary">
                                                                <th scope="row">1</th>
                                                                <td>Mark</td>
                                                                <td>Otto</td>
                                                                <td>@mdo</td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">2</th>
                                                                <td>Jacob</td>
                                                                <td>Thornton</td>
                                                                <td>@fat</td>
                                                            </tr>
                                                            <tr class="bg-success">
                                                                <th scope="row">3</th>
                                                                <td>Larry</td>
                                                                <td>the Bird</td>
                                                                <td>@twitter</td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">4</th>
                                                                <td>Larry</td>
                                                                <td>the Bird</td>
                                                                <td>@twitter</td>
                                                            </tr>
                                                            <tr class="bg-warning">
                                                                <th scope="row">5</th>
                                                                <td>Larry</td>
                                                                <td>the Bird</td>
                                                                <td>@twitter</td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">6</th>
                                                                <td>Larry</td>
                                                                <td>the Bird</td>
                                                                <td>@twitter</td>
                                                            </tr>
                                                            <tr class="bg-danger">
                                                                <th scope="row">7</th>
                                                                <td>Larry</td>
                                                                <td>the Bird</td>
                                                                <td>@twitter</td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">8</th>
                                                                <td>Larry</td>
                                                                <td>the Bird</td>
                                                                <td>@twitter</td>
                                                            </tr>
                                                            <tr class="bg-info">
                                                                <th scope="row">9</th>
                                                                <td>Larry</td>
                                                                <td>the Bird</td>
                                                                <td>@twitter</td>
                                                            </tr> -->
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                       <!-- Background Utilities table end -->
                                    </div>
                                    <!-- Page-body end -->
                                </div>
                            </div>
                            <!-- Main-body end -->

                            <div id="styleSelector">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Warning Section Starts -->
    <!-- Older IE warning message -->
    <!--[if lt IE 10]>
    <div class="ie-warning">
        <h1>Warning!!</h1>
        <p>You are using an outdated version of Internet Explorer, please upgrade <br/>to any of the following web browsers to access this website.</p>
        <div class="iew-container">
            <ul class="iew-download">
                <li>
                    <a href="http://www.google.com/chrome/">
                        <img src="assets/images/browser/chrome.png" alt="Chrome">
                        <div>Chrome</div>
                    </a>
                </li>
                <li>
                    <a href="https://www.mozilla.org/en-US/firefox/new/">
                        <img src="assets/images/browser/firefox.png" alt="Firefox">
                        <div>Firefox</div>
                    </a>
                </li>
                <li>
                    <a href="http://www.opera.com">
                        <img src="assets/images/browser/opera.png" alt="Opera">
                        <div>Opera</div>
                    </a>
                </li>
                <li>
                    <a href="https://www.apple.com/safari/">
                        <img src="assets/images/browser/safari.png" alt="Safari">
                        <div>Safari</div>
                    </a>
                </li>
                <li>
                    <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                        <img src="assets/images/browser/ie.png" alt="">
                        <div>IE (9 & above)</div>
                    </a>
                </li>
            </ul>
        </div>
        <p>Sorry for the inconvenience!</p>
    </div>
    <![endif]-->
    <!-- Warning Section Ends -->
    <!-- Required Jquery -->
    <script type="text/javascript" src="./../resources/assets/js/jquery/jquery.min.js "></script>
    <script type="text/javascript" src="./../resources/assets/js/jquery-ui/jquery-ui.min.js "></script>
    <script type="text/javascript" src="./../resources/assets/js/popper.js/popper.min.js"></script>
    <script type="text/javascript" src="./../resources/assets/js/bootstrap/js/bootstrap.min.js "></script>
    <!-- waves js -->
    <script src="./../resources/assets/pages/waves/js/waves.min.js"></script>
    <!-- jquery slimscroll js -->
    <script type="text/javascript" src="./../resources/assets/js/jquery-slimscroll/jquery.slimscroll.js"></script>
    <!-- Custom js -->
    <script src="./../resources/assets/js/pcoded.min.js"></script>
    <script src="./../resources/assets/js/vertical/vertical-layout.min.js"></script>
    <script src="./../resources/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script type="text/javascript" src="./../resources/assets/js/script.js"></script>
</body>

</html>
