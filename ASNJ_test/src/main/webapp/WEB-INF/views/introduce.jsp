<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>서비스 소개</title>
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
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="resources/css/style.css" rel="stylesheet">
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
				<nav
					class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0"
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
							<a href="${cpath}/Introduce.do" class="nav-item nav-link active">사이트 소개</a>
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

	<!-- 내용 시작 -->
	
	<!-- 사이트 타이틀 시작 -->
	<div class="container-xxl bg-white p-0"	style="display: flex; justify-content: center; align-items: center; max-width: none;">
		<div class="container-fluid pt-4 px-4">
			<div class="mx-auto" style="width: 200px;">
				<div id="underline">
					<h3>사이트 소개</h3>
				</div>
				<br>
			</div>
		</div>
	</div>
	<!-- 사이트 타이틀 끝 -->

	<div class="container-fluid pt-4 px-4">
		<div class="mx-auto" style="width: 500px;">
			<span>저희 알쓸농잡에서는 다양한 병해충 관련 정보를 제공합니다.</span>
		</div>
</div>
<br>
<br>
	<!-- 여기서부터  -->
		<div class="container-xxl p-0"
			style="display: flex; justify-content: center; align-items: center;">
			<div class="row" style="margin-left: 5%">
				<div class="col-6 col-sm-3">
					<i class="bi bi-building fa-5x" style="margin-right:100px;"></i>
					<span id="site_st"></span> 
				<br> <span>알쓸농잡</span>
				</div>
			
				<div class="col-6 col-sm-3" >
				<i class="bi bi-hourglass fa-5x" style="margin-right:80px;"></i>
					<span id="site_st"></span> 
				<br><span id="site_font1">최종프로젝트 일자</span> <br> <span id="site_font1">2022년 12월 13일</span>
				</div>
			
				<div class="col-6 col-sm-3" >
				<i class="bi bi-people-fill fa-5x" style="margin-right:80px;"></i>
					<span id="site_st"></span> 
				<br><span id="site_font1">팀장: 송영지</span> <br> <span id="site_font1">팀원:김도연,김동현,박승현</span>
				</div>
			
				<div class="col-6 col-sm-3">
					<i class="bi bi-map fa-5x"></i>
					<br> <span style="margin-left:20px;">소재지</span> <br><span id="site_font1">전라남도 순천시 석현동 87 5층,</span>
					<br> <span id="site_font1">스마트인재개발원 순천점</span>
				</div>
				
			</div>	
		</div>
		<br>
		<br>
		<!-- 여기까지 -->
		
		<div class="container-xxl bg-white p-0"	style="display: flex; justify-content: center; align-items: center; max-width: none;">
			<div class="container-fluid pt-4 px-4">
				<div class="mx-auto" style="width: 200px;">
					<div id="underline">
						<h4>프로젝트 소개</h4>
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid pt-4 px-4">
		<div class="mx-auto" style="display: flex; justify-content: center;">
			<span>프로젝트 소개내용 적기!!!!</span>
		</div>
	</div>

	<!-- 내용 끝 -->

	<!-- 푸터 시작 -->
	<div>
		<jsp:include page="layout/bottom.jsp" />
	</div>
	<!-- 푸터 끝 -->
	
</body>
</html>