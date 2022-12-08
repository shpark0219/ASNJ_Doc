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
<link href="resources/image/Tab-icon.png" rel="icon">

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
<!--  <script>	
	$(function () {	//화면 로딩후 시작
		$("#searchInput").autocomplete({  //오토 컴플릿트 시작
			source: diseaselist,pestlist,	// source는 data.js파일 내부의 List 배열
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

	<div class="container-xs bg-white p-0" style="max-width: none;">
		<div class="row d-flex justify-content-around"
			style="align-items: center;">
			<div class="header__logo col-2"
				style="float: left; padding-left: 1rem !important;">
				<a href="index.jsp"><img src="resources/img/logo/logo.png"></a>
			</div>

			<!-- 검색창  -->
			<div class="col-6 flex-grow position-relative w-40 my-3 wow fadeInUp" data-wow-delay="0.3s" style="margin-right: 16px;">
				<form action="${cpath}/SearchView.do" method="get">
					<input type="hidden" name="num" value=1>
					<input id="searchInput" class="form-control bg-transparent w-100 py-3 ps-4 pe-5" type="text" name="search" placeholder="검색어를 입력하세요.">
					<button type="submit" class="btn btn-primary py-2 px-3 position-absolute top-0 end-0 mt-2 me-3">검색</button>
				</form>
			</div>

			<c:choose>
				<%-- 로그인 안 했을 때 --%>
				<c:when test="${empty loginMember}">
					<div class="col-2 p-2 m-3"
						style="display: inline-block; min-width: max-content;">
						<div class="header__login" style="margin-right: 10px;">
							<a href="${cpath}/Joinpage.do"
								class="btn btn-outline-success bi bi-person-circle"> 회원가입</a> <a
								href="${cpath}/Loginpage.do"
								class="btn btn-outline-success bi bi-person"
								style="margin-left: 30px;"> 로그인</a>
						</div>
					</div>
				</c:when>
				<c:otherwise>
					<div class="col-2 p-2 m-3"
						style="display: inline-block; min-width: max-content;">
						<div class="header__login"
							style="margin-right: 10px; display: flex; align-items: center; color: #7ebc12;">
							<img alt="" src="resources/image/handshake-simple-solid.svg"
								style="width: 30px; height: 30px;">&nbsp;&nbsp; <label
								for="mem_user_pw" style="padding-right: 15px;">
								<p style="margin-bottom: 0px;">
									<span
										style="font-size: x-large; font-weight: bolder; color: #537f07;">${loginMember.mem_user_name}</span>&nbsp;님
								</p>어서오세요!
							</label>&nbsp;&nbsp; <a href="${cpath}/Logout.do"
								class="btn btn-outline-success bi bi-door-open"></i>로그아웃</a>
						</div>
					</div>
				</c:otherwise>
				<%-- 로그인 시 끝 --%>
			</c:choose>
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