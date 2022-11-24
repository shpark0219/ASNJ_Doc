<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>GreenHost - Web Hosting HTML Template</title>
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
	<jsp:include page="top.jsp" />
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
		style="padding-top: 2rem !important; padding-bottom: 2rem !important;">
		<div class="container-xxl position-relative p-0">
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
						<a href="${cpath}/introduce.do" class="nav-item nav-link">사이트
							소개</a> <a href="${cpath}/prediction.do"
							class="nav-item nav-link active">병해충 예측</a>
						<div class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" data-bs-toggle="dropdown">병해충
								정보</a>
							<div class="dropdown-menu m-0">
								<a href="#" class="dropdown-item">병(病)</a> <a href="#"
									class="dropdown-item">해충</a>
							</div>
						</div>
						<a href="${cpath}/notice.do" class="nav-item nav-link">공지사항</a> <a
							href="#" class="nav-item nav-link">문의사항</a> <a href="#"
							class="nav-item nav-link">농업일지</a>
					</div>
				</div>
			</nav>
		</div>
	</div>
	<!-- 카테고리 끝 -->

	<!-- 내용 시작 -->

	<!-- 병해충 예측 타이틀-->
	<div class="container-xxl bg-white p-0"
		style="display: flex; justify-content: center; align-items: center;">
		<div class="container-fluid pt-4 px-4">
			<div class="mx-auto" style="width: 200px;">
				<div id="underline">
					<h3>병해충 예측</h3>
				</div>
				<br>
			</div>
		</div>
	</div>

	<!-- 병해충 예측 이미지 업로드 -->
	<div class="container d-flex justify-content-center container-fluid pt-4 px-4">
		<div class="image-upload" id="image-upload">

			<form method="post" enctype="multipart/form-data">
				<div class="upload-box" style="width: 600px;">
					<div id="drop-file" class="drag-file">
						<img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일 아이콘" class="image">
						<p class="message">파일을 드래그해서 여기에 놓으세요!!</p>
						<img src="" alt="미리보기 이미지" class="preview">
						<div type="button" class="btn" style="width: 100%;">
							<label class="file-label" for="chooseFile">👉 파일 검색👈</label>
						</div>
					</div>
				</div>
				<input class="file" id="chooseFile" type="file"
					onchange="dropFile.handleFiles(this.files)"
					accept="image/png, image/jpeg, image/gif">
				<div class="fileContainer">
					<div class="fileInput row" style="margin-top: 20px;">
						<h4 class="col-3" style="align-self: flex-end; margin-top: inherit;">작물 이름 :</h4>
						<input class="form-control col-md-9 border-0" type="text" placeholder="작물 이름" style="width: 73%;">						
					</div>
					<div class="fileInput row" style="margin-top: 20px;">
						<h4 class="col-md-2" style="align-self: center;">증상 :</h4>
						<textarea class="form-control col-md-9 border-0 " cols="50" rows="5" placeholder="간단히 작성하세요" style="width: 81.5%;"></textarea>
					</div>
					<div class="buttonContainer row" style="margin-top: 20px;">
						<h4 class="col-md-3" style="align-self: flex-end; margin-top: inherit;">파일명 :</h4>
						<div class="position-relative" style="max-width: 75%;">
							<input class="form-control bg-white border-0 w-100 py-3 ps-4 pe-5 col-md-9" type="text" placeholder="파일명">
							<button type="button" class="btn btn-primary py-2 px-3 position-absolute top-0 end-0 mt-2 me-4">전송</button>
						</div>
					</div>
				</div>
			</form>

		</div>

		<div class="image-show" id="image-show"></div>
	</div>

	<!-- 내용 끝 -->



	<!-- 푸터 시작 -->
	<div>
		<jsp:include page="bottom.jsp" />
	</div>
	<!-- 푸터 끝 -->

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="lib/wow/wow.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="lib/waypoints/waypoints.min.js"></script>
	<script src="lib/counterup/counterup.min.js"></script>
	<script src="lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- 이미지 드래그 앤 드롭 -->
	<script src="resources/js/prediction.js"></script>

	<!-- Template Javascript -->
	<script src="resources/js/main.js"></script>

</body>
</html>