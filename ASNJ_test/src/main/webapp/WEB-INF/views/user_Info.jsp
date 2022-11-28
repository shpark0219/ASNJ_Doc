<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 관리</title>
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
</head>
<body>
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
		<div class="container-xxl position-relative p-0"
			style="margin-right: 0px; max-width: inherit;">
			<nav
				class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0"
				style="bottom: 0px;">
				<a href="index.jsp" class="navbar-brand p-0">
					<h4 class="m-0 text-white" style="font-style: italic;">
						<i class="fa me-3"></i> 알쓸농잡
					</h4> <!-- <img src="img/logo.png" alt="Logo"> -->
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
							<a class="nav-link dropdown-toggle" data-bs-toggle="dropdown">병해충
								정보</a>
							<div class="dropdown-menu m-0">
								<a href="${cpath}/Disease.do" class="dropdown-item">병(病)</a> <a
									href="${cpath}/Pests.do" class="dropdown-item">해충</a>
							</div>
						</div>
						<a href="${cpath}/Diary.do" class="nav-item nav-link">농업일지</a> <a
							href="${cpath}/Notice.do" class="nav-item nav-link">커뮤니티</a> <a
							href="${cpath}/Mypage.do" class="nav-item nav-link">마이페이지</a> <a
							href="${cpath}/UserInfo.do" class="nav-item nav-link active">회원정보
							관리</a>
					</div>
				</div>
			</nav>
		</div>
	</div>
	<!-- 카테고리 끝 -->

	<!-- 내용 시작 -->
	<div class="container-xxl bg-white p-0"
		style="display: flex; justify-content: center; align-items: center; max-width: none;">
		<div class="container-fluid pt-4 px-4">
			<div class="mx-auto" style="width: 200px;">
				<div id="underline">
					<h3>회원정보 관리</h3>
				</div>
				<br>
			</div>
		</div>
	</div>
	
	<!-- 여기부터 넣으면 됩니다. -->
	<div class="container-xs m-5 p-5 my-5 mt-4 borde rounded bg-success"
		style="max-width: 100%; background-color: #f6ffe191 !important;">


		<!-- 회원정보 테이블 시작 -->
		<form method="post" enctype="multipart/form-data" action="" style="margin-left: 5%; margin-right: 5%;">
			<div class="d-flex justify-content-center center-block"
				style="display: flex !important; align-items: center; flex-wrap: wrap;">

				<table class="table bg-white" style="overflow-wrap: anywhere; text-align: center;">
					<thead class="table-success">
						<tr>
							<th>등급</th>
							<th>이름</th>
							<th>아이디</th>
							<th>비밀번호</th>
							<th>이메일</th>
							<th>가입일자</th>
							<th>직업</th>
							<th>수정/삭제</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>관리자</th>
							<th>송영지</th>
							<th>MG1</th>
							<th>*******</th>
							<th>*******@naver.com</th>
							<th>0000.00.00</th>
							<th>취준생</th>
							<th><button type="button" class="btn-sm btn-success">수정</button>&nbsp;/&nbsp;
								<button type="button" class="btn-sm btn-danger">삭제</button></th>
						</tr>
						<tr>
							<th>관리자</th>
							<th>박승현</th>
							<th>MG2</th>
							<th>*******</th>
							<th>*******@naver.com</th>
							<th>0000.00.00</th>
							<th>취준생</th>
							<th><button type="button" class="btn-sm btn-success">수정</button>&nbsp;/&nbsp;
								<button type="button" class="btn-sm btn-danger">삭제</button></th>
						</tr>
						<tr>
							<th>관리자</th>
							<th>김도연</th>
							<th>MG3</th>
							<th>*******</th>
							<th>*******@naver.com</th>
							<th>0000.00.00</th>
							<th>취준생</th>
							<th><button type="button" class="btn-sm btn-success">수정</button>&nbsp;/&nbsp;
								<button type="button" class="btn-sm btn-danger">삭제</button></th>
						</tr>
						<tr>
							<th>관리자</th>
							<th>김동연</th>
							<th>MG4</th>
							<th>*******</th>
							<th>*******@naver.com</th>
							<th>0000.00.00</th>
							<th>취준생</th>
							<th><button type="button" class="btn-sm btn-success">수정</button>&nbsp;/&nbsp;
								<button type="button" class="btn-sm btn-danger">삭제</button></th>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- 회원정보 테이블 끝 -->

			<div style="justify-content: center; margin-left: 43%;">
				<button class="btn btn-success" style="width: 100px;" type="submit"
					id="button-addon4">저장</button>
			</div>
		</form>
	</div>
	<!-- 여기부터 넣으면 됩니다. 끝 -->

	<!-- 내용 끝  -->

	<!-- 푸터 시작 -->
	<div>
		<jsp:include page="layout/bottom.jsp" />
	</div>
	<!-- 푸터 끝 -->
</body>
</html>