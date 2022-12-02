<%@page import="com.asnj.entity.Disease"%>
<%@page import="com.asnj.entity.Member"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>병(病) 피해</title>
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

.form-check-input {
	margin-top: 17px !important;
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
					<div class="collapse navbar-collapse" id="navbarCollapse">
						<div class="navbar-nav ms-auto py-0">
							<a href="${cpath}/Introduce.do" class="nav-item nav-link">사이트
								소개</a> <a href="${cpath}/Prediction.do" class="nav-item nav-link">병해충
								분석</a>
							<div class="nav-item dropdown">
								<a href="#" class="nav-link dropdown-toggle active"
									data-bs-toggle="dropdown">병해충 정보</a>
								<div class="dropdown-menu m-0">
									<a href="${cpath}/Disease.do" class="dropdown-item active">병(病)
										피해</a> <a href="${cpath}/Pests.do" class="dropdown-item">해충 피해</a>
								</div>
							</div>
							<a href="${cpath}/Diary.do" class="nav-item nav-link">농업일지</a> <a
								href="${cpath}/Notice.do" class="nav-item nav-link">커뮤니티</a> <a
								href="${cpath}/Mypage.do" class="nav-item nav-link">마이페이지</a> <a
								href="${cpath}/UserInfo.do" class="nav-item nav-link">회원정보
								관리</a>
						</div>
					</div>
				</nav>
			</div>
		</div>
	</div>
	<!-- 카테고리 끝 -->

	<!-- 내용 시작 -->

	<!-- 병 피해 타이틀-->
	<div class="container-xxl bg-white p-0"
		style="display: flex; justify-content: center; align-items: center; max-width: none;">
		<div class="container-fluid pt-4 px-4">
			<div class="mx-auto" style="width: 200px;">
				<div id="underline">
					<h3>병(病) 피해</h3>
				</div>
				<br>
			</div>
		</div>
	</div>

	<!-- 병 피해 내용 시작 -->
	<div id="themecast" class="container-xxl p-0 ml-5">

		<!-- 작물 카테고리 -->
		<div class="main_category row align-items-center table table-hover"
			style="text-align: center; width: 80%; margin: auto;">
			<div class="w-25 p-5 col-md-auto flex-fill">
				<div id="NM_THEME_CATE_GROUPS" class="group_category"
					data-demo-key="default">
					<div class="row list_category_wrap" style="align-items: center;">
						<div class="col-sm-2" style="text-align: center; margin-left: 14%">
							<h4 class="searchTitle" style="display: inline-block;">작물 선택</h4>
							<i class="bi bi-chevron-double-right"></i>
						</div>
						<div class="col-sm-7">
							<form action="${cpath}/Disease.do" method="get">
								<input class="form-check-input" type="radio"
									name="disease_crops" id="고추" value="고추" checked> <label
									class="form-check-label" for="고추">고추</label>&nbsp;&nbsp;&nbsp;
								<input class="form-check-input" type="radio"
									name="disease_crops" id="감" value="감"> <label
									class="form-check-label" for="감">감</label>&nbsp;&nbsp;&nbsp; <input
									class="form-check-input" type="radio" name="disease_crops"
									id="딸기" value="딸기"> <label class="form-check-label"
									for="딸기">딸기</label>&nbsp;&nbsp;&nbsp; <input
									class="form-check-input" type="radio" name="disease_crops"
									id="오이" value="오이"> <label class="form-check-label"
									for="오이">오이</label>&nbsp;&nbsp;&nbsp; <input
									class="form-check-input" type="radio" name="disease_crops"
									id="파" value="파"> <label class="form-check-label"
									for="파">파</label>&nbsp;&nbsp;&nbsp; <input
									class="form-check-input" type="radio" name="disease_crops"
									id="호박" value="호박"> <label class="form-check-label"
									for="호박">호박</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>
									
									<button type="submit"
										class="btn btn-outline-success searchTitle m-2">
										<i class="bi bi-hand-index-thumb" style="margin-right: 5px;"></i>보기
									</button>
								</span>

							</form>
						</div>

						<div class="mt-5">
							<c:choose>
								<c:when test="${diseaselist ne null}">
									<c:forEach items="${diseaselist}" var="crops" end="0">
										<h2>
											<i class="bi bi-info-circle" style="margin-right: 20px;"></i>"${crops.disease_crops}"&nbsp;작물의
											질병 정보입니다.
										</h2>
									</c:forEach>
								</c:when>
							</c:choose>
						</div>

					</div>
				</div>
			</div>
		</div>
		<hr>
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
					
						<li class="theme_item row">
							<strong class="col-sm-3"><h4>•&nbsp;사진</h4></strong>
							<strong class="col-sm-3"><h4>•&nbsp;병명(病名)</h4></strong>
							<strong class="col-sm-4"><h4>•&nbsp;간략설명</h4></strong>
						</li><hr><br>

						<c:forEach items="${diseaselist}" var="list">
							<a href="PredictionInfoPage.do?disease_pk=${list.disease_pk}"
								class="theme_thumb" style="color: #000">
								<li class="theme_item row">
								<img src="${list.disease_imgpath}" alt="" width="auto;"
									height="250px;" class="col-sm-3" /> 
								<strong class="title elss col-sm-3" style="font-size: large;">${list.disease_name}</strong>
									<p class="desc col-sm-6" style="font-size: large;">${list.disease_symptom}</p></li>
							</a>
							<hr>
						</c:forEach>
					</ul>
				</div>
			</div>

			<!-- 개별 링크 클릭 코드 -->
			<div class="group_theme" data-block-id=""
				data-block-code="PC-THEME-FINANCE-MOBILE-RANKING-DEFAULT-10"
				data-block-type="MATERIALS" data-template-code="MOBILE-RANKING-LIST"
				data-da="container" data-index="" data-page="6"
				style="display: none"></div>
			<!-- 개별 링크 클릭 코드 -->

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