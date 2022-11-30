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

<!-- 달력 -->
<link href='resources/fullcalendar-5.11.3/lib/main.min.css'	rel='stylesheet' />
<script src='resources/fullcalendar-5.11.3/lib/main.min.js'></script>
<script src='resources/js/ko.js'></script>

<!-- 달력 왼쪽 사이트  style -->
<style>
.fc-event {
	margin-top: 5px;
	cursor: move;
}

.carousel-inner img {
  width: 300px;
  height: 150px;
  object-fit: cover;
}
</style>

<script>
/* document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');
    var calendar = new FullCalendar.Calendar(calendarEl, {
      initialView: 'dayGridMonth',
      headerToolbar : {
			left : 'prev,next today', /* 이전, 다음, 오늘 */
			/* center : 'title',
			right : 'dayGridMonth,timeGridWeek,timeGridDay' /* 월간, 주간,일간 */
	/*	},
      locale : 'ko'
    })
    calendar.render();
  }); */

  var Calendar = null;

	document.addEventListener('DOMContentLoaded', function() {
		var Calendar = FullCalendar.Calendar;
		var Draggable = FullCalendar.Draggable;

		var containerEl = document.getElementById('external-events');
		var calendarEl = document.getElementById('calendar');
		var checkbox = document.getElementById('drop-remove');

		// initialize the external events
		// -----------------------------------------------------------------

		new Draggable(containerEl, {
			itemSelector : '.fc-event',
			eventData : function(eventEl) {
				return {
					title : eventEl.innerText
				};
			}
		});

		// initialize the calendar
		// -----------------------------------------------------------------

		calendar = new Calendar(calendarEl, {
			headerToolbar : {
				left : 'prev,next today', /* 이전, 다음, 오늘 */
				center : 'title',
				right : 'dayGridMonth,timeGridWeek,timeGridDay' /* 월간, 주간,일간 */
			},
			editable : true, // 수정가능여부 -- false는 수정 불가능
			droppable : true, // this allows things to be dropped onto the calendar  캘린더 안으로 드롭할 수 있다. false는 드롭 불가
			drop : function(info) {
				// is the "remove after drop" checkbox checked?
				if (checkbox.checked) {
					// if so, remove the element from the "Draggable Events" list
					info.draggedEl.parentNode.removeChild(info.draggedEl);
				}
			},
			locale : 'ko'
		});

		calendar.render();
	});
</script>

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
					<div class="collapse navbar-collapse" id="navbarCollapse">
						<div class="navbar-nav ms-auto py-0">
							<a href="${cpath}/Introduce.do" class="nav-item nav-link">사이트 소개</a>
							<a href="${cpath}/Prediction.do" class="nav-item nav-link">병해충	분석</a>
							<div class="nav-item dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">병해충 정보</a>
								<div class="dropdown-menu m-0">
									<a href="${cpath}/Disease.do?disease_crops=감" class="dropdown-item">병(病) 피해</a>
									<a href="${cpath}/Pests.do" class="dropdown-item">해충 피해</a>
								</div>
							</div>
							<a href="${cpath}/Diary.do" class="nav-item nav-link">농업일지</a> 
							<a href="${cpath}/Notice.do" class="nav-item nav-link">커뮤니티</a> 
							<a href="${cpath}/Mypage.do" class="nav-item nav-link">마이페이지</a>
							<a href="${cpath}/UserInfo.do" class="nav-item nav-link">회원정보 관리</a>
						</div>
					</div>
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
			<div class="container-xxl bg-white p-0" style="display: flex; justify-content: center; align-items: center;">
				<div class="container-fluid pt-4 px-4">
					<div style="margin-left:10%;">
						<div class="mx-auto" style="width: 200px;">
							<div id="underline">
								<h2>방제력</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 내용 들어갈 곳 -->
			<!-- 방제력 달력 시작 -->
				<div class="container" style="background-color: rgb(250, 255, 240); width: 90%; height: 750px; border-radius: 1em; margin-top: 20px;">
									
					<!-- 달력 시작 -->
				<!-- 달력 -->
				<div style="float: left; width: 70%; background-color: white; margin-top: 20px;">
					<br>
					<div id="calendar"></div>
				</div>
				<!-- 달력 끝 -->
				
				<!-- 사이드바 시작 -->
				<div id="external-events" style="float: right; width: 30%; padding-left: 20px; margin-top: 100px;">
					<p>
						<strong>아래의 내용을 드래그하여 설정해 보세요.</strong>
						<br>
						<input type="checkbox" id="drop-remove"> 
						<label for="drop-remove">드래그 앤 드롭후 제거</label>
					</p>

					<div class="fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event">
						<div class="fc-event-main">고추</div>
					</div>
					<div class="fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event">
						<div class="fc-event-main">오이</div>
					</div>
					<div class="fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event">
						<div class="fc-event-main">파</div>
					</div>
					<div class="fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event">
						<div class='fc-event-main'>딸기</div>
					</div>
					<div class="fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event">
						<div class="fc-event-main">호박</div>
					</div>
					<!-- 저장 버튼 -->
					<div style="width: 200%; margin-top: 5%;">
						<button type="submit" class="btn btn-sm btn-success" style="width: 50%;">
							<span>저장</span>
						</button>
					</div>
					<!-- 저장버튼 끝 -->
				</div>
				<!-- 사이드바 끝 -->
						<!-- 내용 들어갈 곳 끝 -->
		</div>
	</div>
	<!-- 방제력 끝 -->
</div>
	
	<!-- < footer > -->
	<jsp:include page="layout/bottom.jsp" />
	<!-- < footer > -->

</body>
</html>