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
<link href="resources/lib/animate/animate.min.css" rel="stylesheet">
<link href="resources/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="resources/css/style.css" rel="stylesheet">

<style type="text/css">
.header__login {
	display: flex !important;
	flex-basis: auto;
	justify-content: flex-end;
	flex-direction: row;
}

input:focus::-webkit-input-placeholder {
	color: transparent;
}

.dropdown:hover .dropdown-menu {
	display: block;
	margin-top: 0;
}
</style>

</head>
<!-- 자동완성 스크립 -->
<!-- <script>	
	$(function () {	//화면 로딩후 시작
		$("#searchInput").autocomplete({  //오토 컴플릿트 시작
			source: #,	// source는 data.js파일 내부의 List 배열
			focus : function(event, ui) { // 방향키로 자동완성단어 선택 가능하게 만들어줌	
				return false;
			},
			minLength: 1,// 최소 글자수
			delay: 100,	//autocomplete 딜레이 시간(ms)
			//disabled: true, //자동완성 기능 끄기
		});
	});
</script> -->

<body>
	<div class="container-xxl bg-white p-0 "
		style="display: flex; justify-content: space-between; align-items: center;">
		<div class="header__logo col-lg-4 pe-lg-5"
			style="float: left; padding-left: 1rem !important;">
			<a href="index.jsp"><img src="resources/img/logo/logo.png"></a>
		</div>
		<div class="position-relative w-100 my-3 wow fadeInUp"
			data-wow-delay="0.3s" style="margin-right: 16px;">
			<input id="searchInput"	class="form-control bg-transparent w-100 py-3 ps-4 pe-5" type="search" name="search" placeholder="검색어를 입력하세요.">
			<button type="button"
				class="btn btn-primary py-2 px-3 position-absolute top-0 end-0 mt-2 me-2">검색</button>
		</div>
		<div class="col-lg-4 pe-lg-5"
			style="display: inline-block; min-width: max-content;">
			<div class="header__login" style="margin-right: 10px;">
				<a href="${cpath}/Joinpage.do" class="btn btn-outline-success bi bi-person-circle"> 회원가입</a> 
				<a href="${cpath}/Loginpage.do" class="btn btn-outline-success bi bi-person" style="margin-left: 30px;"> 로그인</a>
			</div>
		</div>
	</div>
	
	<!-- Spinner Start -->
	<!--  <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div> -->
	<!-- Spinner End -->


</body>
</html>