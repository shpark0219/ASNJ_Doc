<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>알쓸농잡</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&family=Open+Sans:wght@400;500;600;700&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="resources/css/style.css" rel="stylesheet">

<!-- 이미지 배너 css -->
<style>
.carousel-inner .carousel-item .d-block{height: 300px; width: 100%; overflow: hidden;}

.product-title {text-align:center; display:table; border:1px solid #cecece;
    width:280px; height:250px;}

.image-div {display:table-cell; vertical-align:middle;}

.d-block {background-size: contain;}
</style>

<!-- 배너 이미지 사이즈 맞춤 -->
<style type="text/css">
.carousel-inner img {
   width: 300px;
   height: 150px;
   object-fit: cover;
}
</style>


</head>

<body>
	<div class="sticky-top">
		<!-- 헤더 시작 -->
		<jsp:include page="layout/top.jsp" />
		
		<!-- 헤더 끝 -->
	
		<!-- Full Screen Search Start -->
		<div class="modal fade" id="searchModal" tabindex="-1">
			<div class="modal-dialog modal-fullscreen">
				<div class="modal-content" style="background: rgba(29, 40, 51, 0.8);">
					<div class="modal-header border-0">
						<button type="button" class="btn bg-white btn-close"
							data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div
						class="modal-body d-flex align-items-center justify-content-center">
						<div class="input-group" style="max-width: 600px;">
							<input type="text"
								class="form-control bg-transparent border-light p-3"
								placeholder="Type search keyword">
							<button class="btn btn-light px-4">
								<i class="bi bi-search"></i>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Full Screen Search End -->
	
		<!-- 카테고리 시작 -->
		<div class="container-xxl py-5 bg-primary hero-header mb-0"
			style="padding-top: 2rem !important; padding-bottom: 2rem !important; max-width: none;">
			<div class="container-xxl position-relative p-0" style="margin-right: 0px; max-width: inherit;">
				<nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0"
					style="bottom: 0px;">
					<a href="index.jsp" class="navbar-brand p-0">
						<h4 class="m-0 text-white" style="font-style: italic;">
							<i class="fa me-3"></i> 알쓸농잡
						</h4>
					</a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
						<span class="fa fa-bars"></span>
					</button>
					<c:choose>
					<%-- 로그인 안 했을 때 --%>
					<c:when test="${empty loginMember}">
					<div class="collapse navbar-collapse" id="navbarCollapse">
						<div class="navbar-nav ms-auto py-0">
							<a href="${cpath}/Introduce.do" class="nav-item nav-link">사이트 소개</a>
							<a href="${cpath}/Prediction.do" class="nav-item nav-link">병해충	분석</a>
							<div class="nav-item dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">병해충 정보</a>
								<div class="dropdown-menu m-0">
									<a href="${cpath}/Disease.do?disease_crops=고추" class="dropdown-item">병(病) 피해</a>
									<a href="${cpath}/Pests.do?pest_crops=고추" class="dropdown-item">해충 피해</a>
								</div>
							</div>
							<a href="${cpath}/Diary.do" class="nav-item nav-link">농업일지</a> 
							<a href="${cpath}/Notice.do?num=1" class="nav-item nav-link">커뮤니티</a> 
						</div>
					</div>
					</c:when>
					<c:otherwise>
					<div class="collapse navbar-collapse" id="navbarCollapse">
						<div class="navbar-nav ms-auto py-0">
							<a href="${cpath}/Introduce.do" class="nav-item nav-link">사이트 소개</a>
							<a href="${cpath}/Prediction.do" class="nav-item nav-link">병해충	분석</a>
							<div class="nav-item dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">병해충 정보</a>
								<div class="dropdown-menu m-0">
									<a href="${cpath}/Disease.do?disease_crops=고추" class="dropdown-item">병(病) 피해</a>
									<a href="${cpath}/Pests.do?pest_crops=고추" class="dropdown-item">해충 피해</a>
								</div>
							</div>
							<a href="${cpath}/Diary.do" class="nav-item nav-link">농업일지</a> 
							<a href="${cpath}/Notice.do?num=1" class="nav-item nav-link">커뮤니티</a> 
							<a href="${cpath}/Mypage.do?mem_pk=${loginMember.mem_pk}" class="nav-item nav-link">마이페이지</a>
							<c:if test="${loginMember.mem_user_job eq '관리자'}">
							<a href="${cpath}/UserInfo.do" class="nav-item nav-link">회원정보 관리</a>
							</c:if>
						</div>
					</div>
					</c:otherwise>
					</c:choose>
				</nav>
			</div>
		</div>
	</div>
	<!-- 카테고리 끝 -->

	<!-- 이미지 슬라이스 시작 -->
	<div id="demo"
		class="carousel slide container-xxl position-relative p-0"
		data-bs-ride="carousel" style="max-width: none;">

		<!-- Indicators/dots -->
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#demo" data-bs-slide-to="0"
				class="active"></button>
			<button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
			<button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
		</div>

		<!-- The slideshow/carousel -->
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="resources/image/farm4.jpg" alt="" class="d-block img-fluid">				
			</div>
			<div class="carousel-item text-cente image-div">
				<img src="resources/image/farm2.jpg" alt="" class="d-block img-fluid">				
			</div>
			<div class="carousel-item text-cente image-div">
				<img src="resources/image/farm3.jpg" alt="" class="d-block img-fluid">				
			</div>
		</div>

		<!-- Left and right controls/icons -->
		<button class="carousel-control-prev" type="button"
			data-bs-target="#demo" data-bs-slide="prev">
			<span class="carousel-control-prev-icon"></span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#demo" data-bs-slide="next">
			<span class="carousel-control-next-icon"></span>
		</button>
	</div>
	<!-- 이미지 슬라이스 끝 -->

<!-- 방제력 시작  -->
	<div class="container mt-5">
		<div class="row">
			<div class="container-xxl bg-white p-0"
				style="display: flex; justify-content: center; align-items: center;">
				<div class="container-fluid pt-4 px-4">
					<div style="margin-left: 10%;">
						<div class="mx-auto" style="width: 200px;">
							<div id="underline">
								<h2>농작업 일정</h2>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- 내용 들어갈 곳 -->
			<div class="container" width: 100%; height:1150px; margin-top: 20px;">

				<!-- 방제력 달력 시작 -->
				<div id="external-events" style="float: right; width: 100%;">
					<!-- 달력 -->
					<div
						style="float: left; width: 85%; height: 100%; background-color: white; margin-top: 30px;">
						<br>
						<div id="calendar"></div>
					</div>

					<!-- 달력 끝 -->
					<!-- 방제력 달력 체크 시작 -->
					<div id="external-events" style="float: right; margin-top: 50px;">
						<div class="container mt-3"	style="display: flex; justify-content: center; align-items: center;">
							<ul class="list-group">
								<li class="list-group-item checkbox-inline"	style="background-color: #3FD739; color: #fff;">
									<input class='filter' type="checkbox" value="고추" checked> 고추</li>
								<li class="list-group-item checkbox-inline"	style="background-color: #75D19D; color: #fff;">
									<input class='filter' type="checkbox" value="오이" checked> 오이</li>
								<li class="list-group-item checkbox-inline"	style="background-color: #0099FF; color: #fff;">
									<input class='filter' type="checkbox" value="파" checked> 파</li>
								<li class="list-group-item checkbox-inline"	style="background-color: #FFB7B7; color: #fff;">
									<input class='filter' type="checkbox" value="딸기" checked> 딸기</li>
								<li class="list-group-item checkbox-inline" style="background-color: #FCA651; color: #fff;">
									<input class='filter' type="checkbox" value="호박" checked> 호박</li>
							</ul>
						</div>
					</div>
					<!-- 방제력 달력 체크 끝 -->
				</div>
			<!-- 방재력 달력 끝 -->
			</div>
			<!-- 내용 들어갈 곳 끝 -->
		</div>
		<!-- 방제력 끝 -->
	</div>
	<!-- < footer > -->
	<jsp:include page="layout/bottom.jsp" />
	<!-- < footer > -->

</body>

<!-- 달력 -->
<link href='resources/fullcalendar-5.11.3/lib/main.min.css'	rel='stylesheet' />
<script src='resources/fullcalendar-5.11.3/lib/main.min.js'></script>
<script src='resources/js/ko.js'></script>

<script>
	document.addEventListener('DOMContentLoaded', function() {
		var initialLocaleCode = 'en';
		var localeSelectorEl = document.getElementById('locale-selector');
		var calendarEl = document.getElementById('calendar');

		var calendar = new FullCalendar.Calendar(calendarEl, {
			headerToolbar : {
				left : 'prev,next today',
				center : 'title',
				right : 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
			},
			locale : initialLocaleCode,
			buttonIcons : false, // show the prev/next text
			// weekNumbers: true,
			navLinks : true, // can click day/week names to navigate views
			// editable: true,
			dayMaxEvents : true, // allow "more" link when too many events
			events : [
			// 고추 시작 
			{
				groupId : 999,
				title : '[고추]발아기,육모기',
				start : '2022-01-21',
				end : '2022-04-01',
				backgroundColor : "#3FD739 "
			}, {
				groupId : 999,
				title : '[고추]정식기',
				start : '2022-04-01',
				end : '2022-05-01',
				backgroundColor : "#3FD739 "
			}, {
				groupId : 999,
				title : '[고추]]개화기',
				start : '2022-05-01',
				end : '2022-04-11',
				backgroundColor : "#3FD739 "
			}, {
				groupId : 999,
				title : '[고추]온상설치',
				start : '2022-01-01',
				end : '2022-02-01',
				backgroundColor : "#3FD739 "
			}, {
				groupId : 999,
				title : '[고추]품종선책',
				start : '2022-02-01',
				end : '2022-03-21',
				backgroundColor : "#3FD739 "
			}, {
				groupId : 999,
				title : '[고추]정식',
				start : '2022-03-21',
				end : '2022-04-21',
				backgroundColor : "#3FD739 "
			}, {
				groupId : 999,
				title : '[고추]지주설치,유인',
				start : '2022-04-21',
				end : '2022-06-01',
				backgroundColor : "#3FD739 "
			}, {
				groupId : 999,
				title : '[고추]풋고추 수확',
				start : '2022-06-01',
				end : '2022-07-01',
				backgroundColor : "#3FD739 "
			}, {
				groupId : 999,
				title : '[고추]붉은고추 수확',
				start : '2022-07-01',
				end : '2022-09-21',
				backgroundColor : "#3FD739 "
			}, {
				groupId : 999,
				title : '[고추]생산량 및 수량 감소시 연장 재배',
				start : '2022-09-21',
				end : '2022-12-11',
				backgroundColor : "#3FD739 "
			}, {
				groupId : 999,
				title : '[고추]1회웃거름',
				start : '2022-05-01',
				end : '2022-06-01',
				backgroundColor : "#3FD739 "
			}, {
				groupId : 999,
				title : '[고추]2회웃거름',
				start : '2022-06-01',
				end : '2022-07-01',
				backgroundColor : "#3FD739 "
			}, {
				groupId : 999,
				title : '[고추]3회웃거름',
				start : '2022-07-11',
				end : '2022-08-11',
				backgroundColor : "#3FD739 "
			},
			// 오이
			{
				groupId : 998,
				title : '[오이]발아,육모',
				start : '2022-10-11',
				end : '2022-11-21',
				backgroundColor : "#75D19D"
			}, {
				groupId : 998,
				title : '[오이]생육기',
				start : '2022-10-11',
				end : '2023-11-21',
				backgroundColor : "#75D19D",
			}, {
				groupId : 998,
				title : '[오이]수확기',
				start : '2023-02-01',
				end : '2023-06-01',
				backgroundColor : "#75D19D",
			}, {
				groupId : 998,
				title : '[오이]파종',
				start : '2022-10-11',
				end : '2022-11-01',
				backgroundColor : "#75D19D",
			}, {
				groupId : 998,
				title : '[오이]파종준비',
				start : '2022-10-21',
				end : '2022-11-01',
				backgroundColor : "#75D19D",
			}, {
				groupId : 998,
				title : '[오이]접목',
				start : '2022-11-01',
				end : '2022-11-11',
				backgroundColor : "#75D19D",
			}, {
				groupId : 998,
				title : '[오이]접목 묘관리',
				start : '2022-11-11',
				end : '2022-11-21',
				backgroundColor : "#75D19D",
			}, {
				groupId : 998,
				title : '[오이]정식 후 관리',
				start : '2022-11-21',
				end : '2022-12-01',
				backgroundColor : "#75D19D",
			}, {
				groupId : 998,
				title : '[오이]정식',
				start : '2022-12-01',
				end : '2022-12-11',
				backgroundColor : "#75D19D",
			}, {
				groupId : 998,
				title : '[오이]지주세우기, 유인',
				start : '2022-12-11',
				end : '2023-02-01',
				backgroundColor : "#75D19D",
			}, {
				groupId : 998,
				title : '[오이]유인',
				start : '2023-02-01',
				end : '2023-03-11',
				backgroundColor : "#75D19D",
			}, {
				groupId : 998,
				title : '[오이]수확',
				start : '2023-03-11',
				end : '2023-06-01',
				backgroundColor : "#75D19D",
			}, {
				groupId : 998,
				title : '[오이]1회 웃거름',
				start : '2023-02-01',
				end : '2023-02-21',
				backgroundColor : "#75D19D",
			}, {
				groupId : 998,
				title : '[오이]2회 웃거름',
				start : '2023-03-01',
				end : '2023-03-21',
				backgroundColor : "#75D19D",
			}, {
				groupId : 998,
				title : '[오이]3회 웃거름',
				start : '2023-04-01',
				end : '2023-04-21',
				backgroundColor : "#75D19D"
			},

			// 파
			{
				groupId : 997,
				title : '[파]춘파재배',
				start : '2022-01-21',
				end : '2022-03-21'
			}, {
				groupId : 997,
				title : '[파]묘신장기',
				start : '2022-04-01',
				end : '2022-07-01'
			}, {
				groupId : 997,
				title : '[파]엽포(잎집부의)신장기',
				start : '2022-08-01',
				end : '2022-11-01'
			}, {
				groupId : 997,
				title : '[파]파종',
				start : '2022-04-01',
				end : '2022-04-21'
			}, {
				groupId : 997,
				title : '[파]솎음',
				start : '2022-05-01',
				end : '2022-05-21'
			}, {
				groupId : 997,
				title : '[파]솎음',
				start : '2022-06-01',
				end : '2022-06-21'
			}, {
				groupId : 997,
				title : '[파]정식',
				start : '2022-06-21',
				end : '2022-07-21'
			}, {
				groupId : 997,
				title : '[파]북주기',
				start : '2022-08-01',
				end : '2022-10-21'
			}, {
				groupId : 997,
				title : '[파]수확',
				start : '2022-11-01',
				end : '2022-12-11'
			}, {
				groupId : 997,
				title : '[파]김매기',
				start : '2022-05-01',
				end : '2022-07-01'
			}, {
				groupId : 997,
				title : '[파]1회 웃거름',
				start : '2022-07-11',
				end : '2022-08-01'
			}, {
				groupId : 997,
				title : '[파]2회 웃거름',
				start : '2022-08-01',
				end : '2022-09-11'
			}, {
				groupId : 997,
				title : '[파]3회 웃거름',
				start : '2022-09-21',
				end : '2022-10-11'
			}, {
				groupId : 997,
				title : '[파]추대주솎음,화구절단',
				start : '2022-02-01',
				end : '2022-04-01'
			}, {
				groupId : 997,
				title : '[파]짚, 비닐피복',
				start : '2022-01-01',
				end : '2022-03-11'
			}, {
				groupId : 997,
				title : '[파]정식',
				start : '2022-03-11',
				end : '2022-04-21'
			}, {
				groupId : 997,
				title : '[파]수확',
				start : '2022-06-01',
				end : '2022-07-21'
			}, {
				groupId : 997,
				title : '[파]추파재배',
				start : '2022-08-01',
				end : '2022-09-21'
			}, {
				groupId : 997,
				title : '[파]파종',
				start : '2022-09-21',
				end : '2022-10-21'
			}, {
				groupId : 997,
				title : '[파]짚, 비닐피복',
				start : '2022-11-21',
				end : '2023-04-01'
			},

			// 딸기/사계성여름재배
			{
				groupId : 996,
				title : '[딸기/사계성여름재배]묘 냉장저장',
				start : '2022-01-01',
				end : '2022-03-11',
				backgroundColor : "#FFB7B7"
			}, {
				groupId : 996,
				title : '[딸기/사계성여름재배]모주정식',
				start : '2022-03-11',
				end : '2022-05-01',
				backgroundColor : "#FFB7B7"
			}, {
				groupId : 996,
				title : '[딸기/사계성여름재배]자묘증식',
				start : '2022-06-01',
				end : '2022-09-20',
				backgroundColor : "#FFB7B7"
			}, {
				groupId : 996,
				title : '[딸기/사계성여름재배]묘 냉장저장',
				start : '2022-10-01',
				end : '2022-12-01',
				backgroundColor : "#FFB7B7"
			}, {
				groupId : 996,
				title : '[딸기/사계성여름재배]육묘기간',
				start : '2022-03-01',
				end : '2022-04-01',
				backgroundColor : "#FFB7B7"
			}, {
				groupId : 996,
				title : '[딸기/사계성여름재배]정식기간',
				start : '2022-04-01',
				end : '2022-05-01',
				backgroundColor : "#FFB7B7"
			}, {
				groupId : 996,
				title : '[딸기/사계성여름재배]수확기간',
				start : '2022-06-01',
				end : '2022-11-01',
				backgroundColor : "#FFB7B7"
			},

			// 딸기/반촉성재배
			{
				groupId : 996,
				title : '[딸기/반촉성재배]모주정식',
				start : '2022-03-11',
				end : '2022-04-21',
				backgroundColor : "#FFB7B7"
			}, {
				groupId : 996,
				title : '[딸기/반촉성재배]자묘증식',
				start : '2022-05-11',
				end : '2022-08-11',
				backgroundColor : "#FFB7B7"
			}, {
				groupId : 996,
				title : '[딸기/반촉성재배]정식',
				start : '2022-08-21',
				end : '2022-09-11',
				backgroundColor : "#FFB7B7"
			}, {
				groupId : 996,
				title : '[딸기/반촉성재배]보온',
				start : '2022-10-11',
				end : '2022-11-21',
				backgroundColor : "#FFB7B7"
			}, {
				groupId : 996,
				title : '[딸기/반촉성재배]수확',
				start : '2022-01-21',
				end : '2022-05-01',
				backgroundColor : "#FFB7B7"
			},

			// 딸기/촉성재배
			{
				groupId : 996,
				title : '[딸기/촉성재배]모주삽목',
				start : '2022-09-11',
				end : '2022-10-11',
				backgroundColor : "#FFB7B7"
			}, {
				groupId : 996,
				title : '[딸기/촉성재배]모주전조처리',
				start : '2022-02-01',
				end : '2022-03-21',
				backgroundColor : "#FFB7B7"
			}, {
				groupId : 996,
				title : '[딸기/촉성재배]모주정식',
				start : '2022-03-21',
				end : '2022-04-11',
				backgroundColor : "#FFB7B7"
			}, {
				groupId : 996,
				title : '[딸기/촉성재배]자묘정식',
				start : '2022-05-21',
				end : '2022-07-21',
				backgroundColor : "#FFB7B7"
			}, {
				groupId : 996,
				title : '[딸기/촉성재배]정식',
				start : '2022-08-01',
				end : '2022-09-01',
				backgroundColor : "#FFB7B7"
			}, {
				groupId : 996,
				title : '[딸기/촉성재배]보온',
				start : '2022-09-11',
				end : '2022-10-21',
				backgroundColor : "#FFB7B7"
			}, {
				groupId : 996,
				title : '[딸기/촉성재배]전조처리',
				start : '2022-11-11',
				end : '2022-12-11',
				backgroundColor : '#FFB7B7'
			}, {
				groupId : 996,
				title : '[딸기/촉성재배]수확',
				start : '2022-01-01',
				end : '2022-06-11',
				backgroundColor : "#FFB7B7"
			}, {
				groupId : 996,
				title : '[딸기/촉성재배]수확개시',
				start : '2022-10-11',
				end : '2022-11-11',
				backgroundColor : "#FFB7B7"
			},

			// 호바
			{
				groupId : 995,
				title : '[호박]조숙재배',
				start : '2022-06-11',
				end : '2022-08-01',
				backgroundColor : "#FCA651"
			}, {
				groupId : 995,
				title : '[호박]파종',
				start : '2022-02-01',
				end : '2022-03-01',
				backgroundColor : "#FCA651"
			}, {
				groupId : 995,
				title : '[호박]정식',
				start : '2022-03-11',
				end : '2022-04-01',
				backgroundColor : "#FCA651"
			}, {
				groupId : 995,
				title : '[호박]수확',
				start : '2022-05-11',
				end : '2022-08-11',
				backgroundColor : "#FCA651"
			}, {
				groupId : 995,
				title : '[호박]멀칭, 터널',
				start : '2022-03-11',
				end : '2022-04-11',
				backgroundColor : "#FCA651"
			}, {
				groupId : 995,
				title : '[호박]1차 웃거름',
				start : '2022-04-11',
				end : '2022-05-01',
				backgroundColor : "#FCA651"
			}, {
				groupId : 995,
				title : '[호박]2차 웃거름',
				start : '2022-05-21',
				end : '2022-06-11',
				backgroundColor : "#FCA651"
			}, {
				groupId : 995,
				title : '[호박]3차 웃거름',
				start : '2022-07-21',
				end : '2022-08-01',
				backgroundColor : "#FCA651"
			}, {
				groupId : 995,
				title : '[호박]촉성재배',
				start : '2022-10-11',
				end : '2022-11-11',
				backgroundColor : "#FCA651"
			}, {
				groupId : 995,
				title : '[호박]정식',
				start : '2022-01-01',
				end : '2022-02-01',
				backgroundColor : "#FCA651"
			}, {
				groupId : 995,
				title : '[호박]수확',
				start : '2022-03-01',
				end : '2022-05-11',
				backgroundColor : "#FCA651"
			}, {
				groupId : 995,
				title : '[호박]파종',
				start : '2022-01-11',
				end : '2022-12-11',
				backgroundColor : "#FCA651"
			},

			// 호작/늙은호박
			{
				groupId : 995,
				title : '[호박/늙은호박]노지재배',
				start : '2022-01-01',
				end : '2022-02-21',
				backgroundColor : "#FCA651"
			}, {
				groupId : 995,
				title : '[호박/늙은호박]파종',
				start : '2022-03-11',
				end : '2022-04-11',
				backgroundColor : "#FCA651"
			}, {
				groupId : 995,
				title : '[호박/늙은호박]정식',
				start : '2022-04-11',
				end : '2022-05-21',
				backgroundColor : "#FCA651"
			}, {
				groupId : 995,
				title : '[호박/늙은호박]덩굴신장 및 수정',
				start : '2022-05-21',
				end : '2022-07-11',
				backgroundColor : "#FCA651"
			}, {
				groupId : 995,
				title : '[호박/늙은호박]과실비대 및 성숙',
				start : '2022-07-11',
				end : '2022-09-21',
				backgroundColor : "#FCA651"
			}, {
				groupId : 995,
				title : '[호박/늙은호박]수확',
				start : '2022-09-21',
				end : '2022-11-01',
				backgroundColor : "#FCA651"
			}, {
				groupId : 995,
				title : '[호박/늙은호박]멀칭, 터널',
				start : '2022-04-11',
				end : '2022-05-21',
				backgroundColor : "#FCA651"
			}, {
				groupId : 995,
				title : '[호박/늙은호박]1차 웃거름',
				start : '2022-06-11',
				end : '2022-07-01',
				backgroundColor : "#FCA651"
			}, {
				groupId : 995,
				title : '[호박/늙은호박]2차 웃거름',
				start : '2022-07-11',
				end : '2022-08-01',
				backgroundColor : "#FCA651"
			}, {
				groupId : 995,
				title : '[호박/늙은호박]3차 웃거름',
				start : '2022-08-11',
				end : '2022-09-01',
				backgroundColor : "#FCA651"
			} ],
			locale : 'ko'
		});
		calendar.render();
	});
</script>

</html>