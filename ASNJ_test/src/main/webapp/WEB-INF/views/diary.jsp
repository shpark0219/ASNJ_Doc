<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>농업일지</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&family=Open+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"	rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="resources/css/style.css" rel="stylesheet">

<script src="https://code.jquery.com/jquery-latest.js"></script>

<script>

/* 로그인 모달 시작 */
jQuery(document).ready(function() {
       $('#myModal').show();
});
//팝업 Close 기능
function close_pop(flag) {
    $('#myModal').hide();
};
/* 로그인 모달 끝 */
 
</script>
</head>

<body>
	<div class="sticky-top">	
		<!-- header -->
		<jsp:include page="layout/top.jsp" />
		<!-- header -->
	
		<!-- Full Screen Search Start -->
		<div class="modal fade" id="searchModal" tabindex="-1">
			<div class="modal-dialog modal-fullscreen">
				<div class="modal-content" style="background: rgba(29, 40, 51, 0.8);">
					<div class="modal-header border-0">
						<button type="button" class="btn bg-white btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div
						class="modal-body d-flex align-items-center justify-content-center">
						<div class="input-group" style="max-width: 600px;">
							<input type="text"	class="form-control bg-transparent border-light p-3" placeholder="Type search keyword">
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
				<nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0"	style="bottom: 0px;">
					<a href="index.jsp" class="navbar-brand p-0">
						<h4 class="m-0 text-white" style="font-style: italic;">
							<i class="fa me-3"></i> 알쓸농잡
						</h4>
					</a>
					<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
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
									<a href="${cpath}/Pests.do" class="dropdown-item">해충 피해</a>
								</div>
							</div>
							<a href="${cpath}/Diary.do" class="nav-item nav-link">농업일지</a> 
							<a href="${cpath}/Notice.do" class="nav-item nav-link">커뮤니티</a> 
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
									<a href="${cpath}/Pests.do" class="dropdown-item">해충 피해</a>
								</div>
							</div>
							<a href="${cpath}/Diary.do" class="nav-item nav-link">농업일지</a> 
							<a href="${cpath}/Notice.do" class="nav-item nav-link">커뮤니티</a> 
							<a href="${cpath}/Mypage.do?mem_pk=${loginMember.mem_pk}" class="nav-item nav-link active">마이페이지</a>
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

	<!-- 내용 시작 -->
	<!-- 농업일지 타이틀 -->
	<div class="container" style="background-color: rgb(250, 255, 250); width: 70%; height: 100px; border-radius: 1em; box-shadow: 3px 3px 3px gray; margin-top: 10px; max-width: none;">
		<div>
			<img src="resources/image/farmicon.png" align=right> 
			<span align="center"><br>
				<h2>농업일지</h2>
				<p>농업일지를 작성해보세요~♬</p> </span>
		</div>
	</div>
	<!-- 농업일지 타이틀 끝 -->
	<br>
	<div class="container">
		<!-- 농업일지 시작 -->
		<div class="row">
			<div class="container" style="width: 100%; height: 1000px; border-radius: 1em; margin: 10px 0;">
				
				<!-- 달력 시작 -->
				<!-- 달력 -->
				<div class="container-fluid pt-4 px-4" style="width: 90%; background-color: white; margin-top: 30px;">
					<br>
					<div id="calendar"></div>
				</div>
				<!-- 달력 끝 -->
				<c:choose>
				<%-- 로그인 안 했을 때 --%>
				<c:when test="${empty loginMember}">
				<%-- 로그인 모달 시작 --%>
				<div class="modal" id="myModal" data-bs-backdrop="static">
					<div class="modal-dialog modal-lg modal-dialog-centered">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title">알림</h4>
								<button type="button" class="btn-close" onClick="close_pop();"data-bs-dismiss="modal"></button>
							</div>

							<div class="modal-body">
							<br><br><br>
							<div align="center">
								<h2>로그인 후 이용 가능합니다.</h2>
							</div>
							<br><br><br>
							<div class="modal-footer">
								<span class="text-center mb-0">비회원이십니까?	
									<a href="${cpath}/Joinpage.do">회원가입</a>
								</span>	&nbsp;&nbsp;&nbsp;
								<span class="text-center mb-0">로그인 하시겠습니까?	
									<a href="${cpath}/Loginpage.do">로그인</a>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<%-- 로그인 모달창 끝 --%>
			</c:when>
			</c:choose>
			
			
			
			</div>
		</div>
		<!-- 농업일지 끝 -->
	</div>
	<!-- 내용 끝 -->

	<!-- 푸터 시작 -->
	<div>
		<jsp:include page="layout/bottom.jsp" />
	</div>
	<!-- 푸터 끝 -->

</body>

<!-- 달력 -->
<link href='resources/fullcalendar-5.11.3/lib/main.min.css'	rel='stylesheet' />
<script src='resources/fullcalendar-5.11.3/lib/main.min.js'></script>
<script src='resources/js/ko.js'></script>

<script src='resources/fullcalendar-5.11.3/lib/locales-all.js'></script>
<script src='resources/fullcalendar-5.11.3/lib/locales-all.min.js'></script>
<script src='resources/fullcalendar-5.11.3/lib/main.js'></script>

<script>
document.addEventListener('DOMContentLoaded', function() {
	 var Calendar = null;
	    var calendarEl = document.getElementById('calendar');

	    var calendar = new FullCalendar.Calendar(calendarEl, {
	      headerToolbar: {
	        left: 'prev,next today',
	        center: 'title',
	        right: 'dayGridMonth,timeGridWeek,timeGridDay'
	      },
	      navLinks: true, // can click day/week names to navigate views
	      selectable: true,
	      selectMirror: true,
	      businessHours: true, // display business hours
	      editable: true,
	      selectable: true,
	      select: function(arg) {
	        var title = prompt('내용을 적으세요.');
	        if (title) {
	          calendar.addEvent({
	            title: title,
	            start: arg.start,
	            end: arg.end,
	            allDay: arg.allDay
	          })
	        }
	        calendar.unselect()
	      },
	      eventClick: function(arg) {
	        if (confirm('삭제하시겠습니까?')) {
	          arg.event.remove()
	        }
	      },
	      editable: true,
	      dayMaxEvents: true, // allow "more" link when too many events
	      locale : 'ko'
	    });

	    calendar.render();
	  });
</script>
</html>