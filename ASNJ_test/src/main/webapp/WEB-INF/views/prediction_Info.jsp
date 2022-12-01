<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>병해충 정보</title>
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
ul {
	list-style: none;
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
									<a href="${cpath}/Disease.do" class="dropdown-item">병(病) 피해</a>
									<a href="${cpath}/Pests.do" class="dropdown-item">해충 피해</a>
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

	<!-- 병해충 예측 타이틀-->
	<div class="container-xxl bg-white p-0"
		style="display: flex; justify-content: center; align-items: center; max-width: none;">
		<div class="container-fluid pt-4 px-4">
			<div class="mx-auto" style="width: 200px;">
				<div id="underline">
					<h3>병해충 정보</h3>
				</div>
				<br>
			</div>
		</div>
	</div>

	<!-- 병해충 정보 출력 시작 -->

	<c:forEach items="${diseaseinfo}" var="list">
	<c:set var="disease_name_split" value="${fn:split(list.disease_name, ' ')}"/>
	<c:set var="disease_name_split2" value="${fn:split(disease_name_split[1], '(')}"/>
	<c:set var="disease_name_split3" value="${fn:split(disease_name_split2[0], ')')}"/>
	<div class="container-xs m-5 p-5 my-5 mt-4 borde rounded bg-success"
		style="max-width: 1500px; background-color: #f6ffe191 !important;">
		<div class="d-flex justify-content-center center-block"
			style="display: flex !important; align-items: center; flex-wrap: wrap;">
			<img alt="결과정보" src="resources/image/info-icon.png">&nbsp;&nbsp;&nbsp;
			<%-- <c:set var="list" value="${diseaseinfo}"/>
			<h2>${list.disease_name}</h2> --%>
			<%-- 병해충 정보 헤더 --%>
			<h2>${list.disease_name}</h2>	
		</div>
		<hr>
		<br> <img alt="기본정보" src="resources/image/book.png"
			style="width: 30px; height: 30px; float: left;">&nbsp;&nbsp;&nbsp;
		<h4>기본정보</h4>
		<hr>
		<div class="photoSch container-xxl p-0 ml-5">
			<table class="gridPhoto table table-borderless" id="oInputTable">
				<%-- 스타일제거시 테이블형태 유지를 위해 보더를 준다 --%>
				<colgroup>
					<col width="200px">
					<col width="120px">
					<col width="*">
				</colgroup>
				<tbody>
					<tr>
						<td rowspan="4" colspan="2"><img width="100%" height="240px"
							alt="" class="imagesize"
							src="${list.disease_imgpath}"></td>
						<td style="text-align: end; width: 180px;"><span class=""><h5>•&nbsp;질병명</h5></span></td>
						<td>${disease_name_split[0]}</td>
					</tr>
					<tr>
						<td style="text-align: end;"><span class=""><h5>•&nbsp;한문명</h5></span></td>
						<td>${disease_name_split3[0]}</td>
					</tr>
					<tr>
						<td style="text-align: end;"><span class=""><h5>•&nbsp;작물명</h5></span></td>
						<td>${list.disease_crops}</td>
					</tr>
				</tbody>
			</table>
		</div>
		<hr>
		<br>
		<div class="container d-inline-flex justify-content-center">
			<div class="row" style="width: 400px;">
				<div class="col-sm-4 p-2"> <a href="Prediction.do" style="color: #198754 !important;"><span class="">예측 다시하기</span></a> </div>
				<div class="col-sm-4 p-2"> <a href="Notice.do" style="color: #198754 !important;"><span class="">문의하기</span></a> </div>
			</div>
		</div>
		<hr>
		<br>
		<%-- 정보별, 시기별, 월별 탭 --%>
		<img alt="기본정보" src="resources/image/lamp.png"
			style="width: 30px; height: 30px; float: left;">&nbsp;&nbsp;&nbsp;
		<h4>일반정보</h4>
		<hr>
		<ul>
			<li class="photoH5"><h5>•&nbsp;발생환경</h5></li>
			<li class="article">${list.disease_environment}</li>
		</ul>
		<ul>
			<li class="photoH5"><h5>•&nbsp;증상설명</h5></li>
			<li class="article">${list.disease_symptom}</li>
		</ul>
		<ul>
			<li class="photoH5"><h5>•&nbsp;방제방법</h5></li>
			<%-- -를 기준으로 split, <br> 추가해서 forEach 걸기 --%>
			<li class="article">${list.disease_solution}</li>
		</ul>
		<br>
		<hr>
		<!-- 병 사진 정보  -->
		<div class="container mt-3" style="max-width: inherit;">
			<div id="accordion">
				<div class="card">
					<div class="card-header bg-success text-white" style="background-color: #7ebc12 !important; border-radius: 7px !important; height: 40px;">
						<a class="coll-btn btn-block text-white" data-bs-toggle="collapse" href="#collapseOne">
						<i class="bi bi-caret-down" class="down"><span>사진정보</span></i>
						</a>
					</div>
					<div id="collapseOne" class="collapse show"
						data-bs-parent="#accordion">
						<div class="card-body scroll-image">
							<ul id="photoDataUl1">
								<li onclick="fncClickImg('1', '0');" class="active">
									<img alt="${list.disease_imginfo}" src="${list.disease_imgpath}">
									<img alt="${list.disease_imginfo2}" src="${list.disease_imgpath2}">
									<img alt="${list.disease_imginfo3}" src="${list.disease_imgpath3}"> 
									<img alt="${list.disease_imginfo4}" src="${list.disease_imgpath4}"> 
									<img alt="${list.disease_imginfo5}"	src="${list.disease_imgpath5}">
								</li>
								<br>
								<li>
									<span>${list.disease_imginfo}</span>
									<span>${list.disease_imginfo2}</span>
									<span>${list.disease_imginfo3}</span>
									<span>${list.disease_imginfo4}</span>
									<span>${list.disease_imginfo5}</span>								
								</li>
							</ul>
						</div>

					</div>

				</div>
			</div>
		</div>

	</div>
	</c:forEach>

	<!-- 병해충 정보 출력 끝-->



	<!-- 푸터 시작 -->
	<div>
		<jsp:include page="layout/bottom.jsp" />
	</div>
	<!-- 푸터 끝 -->

	</script>
</body>
</html>