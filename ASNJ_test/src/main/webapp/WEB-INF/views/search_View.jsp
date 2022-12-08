<%@page import="com.asnj.entity.Disease"%>
<%@page import="com.asnj.entity.Member"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>검색 결과</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&family=Open+Sans:wght@400;500;600;700&display=swap"
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

<!-- prediction Stylesheet -->
<link href="resources/css/prediction.css" rel="stylesheet">
<style type="text/css">
hr {
	background-color: green !important;
	height: 2px !important;
	/* border:none; */
}

ul {
	list-style: none;
}

.theme_thumb:hover {
	color: #50D050 !important;
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
				<div class="modal-content"
					style="background: rgba(29, 40, 51, 0.8);">
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
			<div class="container-xxl position-relative p-0"
				style="margin-right: 0px; max-width: inherit;">
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
									<a href="${cpath}/Introduce.do" class="nav-item nav-link">사이트
										소개</a> <a href="${cpath}/Prediction.do" class="nav-item nav-link">병해충
										분석</a>
									<div class="nav-item dropdown">
										<a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">병해충 정보</a>
										<div class="dropdown-menu m-0">
											<a href="${cpath}/Disease.do?disease_crops=고추"
												class="dropdown-item">병(病) 피해</a>
										<a href="${cpath}/Pests.do?pest_crops=고추" class="dropdown-item">해충 피해</a>
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
									<a href="${cpath}/Introduce.do" class="nav-item nav-link">사이트
										소개</a> <a href="${cpath}/Prediction.do" class="nav-item nav-link">병해충
										분석</a>
									<div class="nav-item dropdown">
										<a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">병해충 정보</a>
										<div class="dropdown-menu m-0">
											<a href="${cpath}/Disease.do?disease_crops=고추"
												class="dropdown-item">병(病) 피해</a>
										<a href="${cpath}/Pests.do?pest_crops=고추" class="dropdown-item">해충 피해</a>
										</div>
									</div>
									<a href="${cpath}/Diary.do" class="nav-item nav-link">농업일지</a>
									<a href="${cpath}/Notice.do" class="nav-item nav-link">커뮤니티</a>
									<a href="${cpath}/Mypage.do?mem_pk=${loginMember.mem_pk}"
										class="nav-item nav-link">마이페이지</a>
									<c:if test="${loginMember.mem_user_job eq '관리자'}">
										<a href="${cpath}/UserInfo.do" class="nav-item nav-link">회원정보
											관리</a>
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

	<!-- 검색 타이틀-->
	<div class="container-xxl bg-white p-0"
		style="display: flex; justify-content: center; align-items: center; max-width: none;">
		<div class="container-fluid pt-4 px-4">
			<div class="mx-auto" style="width: 200px;">
				<div id="underline">
					<h3>검색 결과</h3>
				</div>
				<br>
			</div>
		</div>
	</div>

	<!-- 검색 내용 시작 -->
	<div id="themecast" class="container-xxl p-0 ml-5">

		<!-- 검색 안내 타이틀 -->
		<div class="main_category row align-items-center table table-hover"
			style="text-align: center; width: 80%; margin: auto;">
			<!-- <div class="w-25 p-4 m-5 col-md-auto flex-fill"> -->
				<div id="NM_THEME_CATE_GROUPS" class="group_category"
					data-demo-key="default">
					<div class="row list_category_wrap" style="align-items: center;">
						<div class="mt-5">
						<c:choose>
						    <c:when test="${fn:length(diseassearchlist) == 0 and fn:length(pestsearchlist) == 0}">
						    <h2>
							<i class="bi bi-info-circle" style="margin-right: 20px;">
							</i>&nbsp;"${search}"&nbsp;에 대한 게시글이 없습니다.
							</h2>
						    </c:when>
						    <c:otherwise>
						    <h2>
							<i class="bi bi-info-circle" style="margin-right: 20px;">
							</i>입력하신&nbsp;"${search}"&nbsp;에  대한 검색 결과입니다.
							</h2>
						    </c:otherwise>
						   </c:choose>
						
						</div>
					</div>
				</div>
			<!-- </div> -->
		</div>
		<br> <br>

		<!-- 작물 정보 contents -->
		<div id="NM_THEME_CONTAINER" class="theme_cont" role="tabpanel"
			data-panel-code="FINANCE" data-parent-code="">
			<div class="group_theme" data-block-id=""
				data-block-code="PC-THEME-FINANCE-MOBILE-RANKING-DEFAULT-0"
				data-block-type="MATERIALS" data-template-code="MOBILE-RANKING-LIST"
				data-da="container" data-index="" data-page="1">

				<div class="list_theme_wrap">
					<ul class="list_theme container" style="padding-right: 32px;">

						<li class="theme_item row"><strong class="col-sm-3">
						<h4>•&nbsp;병해충 피해</h4></strong></li>
						<hr>
						<br>
						<c:choose>
						    <c:when test="${fn:length(diseassearchlist) == 0} && ${fn:length(pestsearchlist) == 0}">
						        <h5> 빠른 시일 내에 정보를 등록하겠습니다. 죄송합니다.</h5>
						    </c:when>
						    <c:otherwise>
						    	<%-- <h5>총 ${fn:length(diseassearchlist)}개의 게시글이 있습니다.</h5> --%>
						        <c:forEach items="${diseassearchlist}" var="Dlist">
						            <a href="PredictionInfoPage.do?disease_pk=${Dlist.disease_pk}"
								class="theme_thumb" style="color: #000">
								<li class="theme_item row"><img
									src="${Dlist.disease_imgpath}" alt="" width="auto;"
									height="250px;" class="col-sm-3" onerror="this.src='resources/image/img.png'"/> <strong
									class="title elss col-sm-3" style="font-size: large;">${Dlist.disease_name}</strong>
									<p class="desc col-sm-6" style="font-size: large;">${Dlist.disease_symptom}</p></li>
							</a>
							<hr>
						        </c:forEach>
						    <c:forEach items="${pestsearchlist}" var="Plist">
							<a href="PestInfoPage.do?pest_pk=${Plist.pest_pk}" class="theme_thumb" style="color: #000">
							<li class="theme_item row">
							<img src="${Plist.pest_imgpath}" alt="" width="auto;" height="250px;" class="col-sm-3" onerror="this.src='resources/image/img.png'"/>
							<strong class="title elss col-sm-3" style="font-size: large;">${Plist.pest_name}</strong>
							<p class="desc col-sm-6" style="font-size: large;">${Plist.pest_harm}</p></li>
							</a>
							<hr>
							</c:forEach>
						    </c:otherwise> 
						</c:choose>
						
					</ul>
				</div>
				<br>

					<!-- 페이징 시작 -->
					<nav class=" d-flex justify-content-center"
						aria-label="Page navigation example">
						<ul class="pagination">
							<li class="page-item"><a class="page-link" href="#"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							</a></li>
							<c:choose>
							<c:when test="${fn:length(diseassearchlist) == 0 and fn:length(pestsearchlist) == 0}">
							<li class="page-item">
								<a class="page-link" href="#">1</a>
								</li>
							</c:when>
							<c:otherwise>
							<c:forEach begin="1" end="${pageNum}" var="num">
								<li class="page-item">
								<a class="page-link <c:if test="${nownum == num}">active</c:if>" href="SearchView.do?search=${search}&num=${num}">${num}</a></li>
							</c:forEach>
							</c:otherwise>
							</c:choose>
							<li class="page-item"><a class="page-link" href="#"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							</a></li>
						</ul>
					</nav>
					<!-- 페이징 끝 -->
					<br>

					<!-- 개별 링크 클릭 코드 -->
					<div class="group_theme" data-block-id=""
						data-block-code="PC-THEME-FINANCE-MOBILE-RANKING-DEFAULT-10"
						data-block-type="MATERIALS"
						data-template-code="MOBILE-RANKING-LIST" data-da="container"
						data-index="" data-page="6" style="display: none"></div>
					<!-- 개별 링크 클릭 코드 -->

				</div>
			</div>
		</div>
	</div>

	<!-- 내용 끝 -->


	<!-- 푸터 시작 -->
	<div>
		<jsp:include page="layout/bottom.jsp" />

	</div>
	<!-- 푸터 끝 -->

	<!-- js파일 -->
</body>
</html>