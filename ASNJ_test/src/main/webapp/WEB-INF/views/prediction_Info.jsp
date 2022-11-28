<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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


	<div class="container-xs m-5 p-5 my-5 mt-4 borde rounded bg-success"
		style="max-width: 1500px; background-color: #f6ffe191 !important;">
		<div class="d-flex justify-content-center center-block"
			style="display: flex !important; align-items: center; flex-wrap: wrap;">
			<img alt="결과정보" src="resources/image/info-icon.png">&nbsp;&nbsp;&nbsp;
			<span class=""><h2>{*병해충명*}</h2></span>
		</div>
		<hr>
		<br> <img alt="기본정보" src="resources/image/book.png"
			style="width: 30px; height: 30px; float: left;">&nbsp;&nbsp;&nbsp;
		<h4>기본정보</h4>
		<hr>
		<div class="photoSch container-xxl p-0 ml-5">
			<table class="gridPhoto table table-borderless" id="oInputTable">
				<!-- 스타일제거시 테이블형태 유지를 위해 보더를 준다 -->
				<colgroup>
					<col width="200px">
					<col width="120px">
					<col width="*">
				</colgroup>
				<tbody>
					<tr>
						<td rowspan="4" colspan="2"><img width="100%" height="240px"
							alt="" class="imagesize"
							src="http://webbuild1.knu.ac.kr/~bskim/image/powd1.jpg"></td>
						<td style="text-align: end; width: 180px;"><span class=""><h5>•&nbsp;질병명</h5></span></td>
						<td>갈색둥근무늬병</td>
					</tr>
					<tr>

						<td style="text-align: end;"><span class=""><h5>•&nbsp;한문명</h5></span></td>
						<td>褐色圓星病</td>
					</tr>
					<tr>

						<td style="text-align: end;"><span class=""><h5>•&nbsp;작물명</h5></span></td>
						<td>고추</td>
					</tr>
				</tbody>
			</table>

		</div>
		<hr>
		<br>

		<div class="container d-inline-flex justify-content-center">
			<div class="row" style="width: 400px;">
				<div class="col-sm-4 p-2">
					<a href="" style="color: #198754 !important;"><span class="">예측
							다시하기</span></a>
				</div>
				<div class="col-sm-4 p-2">
					<a href="" style="color: #198754 !important;"><span class="">농약정보</span></a>
				</div>
				<div class="col-sm-4 p-2">
					<a href="" style="color: #198754 !important;"><span class="">문의하기</span></a>
				</div>
			</div>
		</div>
		<hr>
		<br>

		<!-- //정보별,시기별,월별 탭 -->

		<img alt="기본정보" src="resources/image/lamp.png"
			style="width: 30px; height: 30px; float: left;">&nbsp;&nbsp;&nbsp;
		<h4>일반정보</h4>
		<hr>



		<ul>
			<li class="photoH5"><h5>•&nbsp;발생환경</h5></li>
			<li class="article">1차 전염원에 대하여 아직 정확한 연구결과는 없으나 병원균은 병든 잎의
				잔재(殘滓)에서 분생포자나 균사의 형태로 겨울을 나는 것으로 생각된다. <br>1차 전염원에서 형성된 분생포자는
				비산되어 전반되며, 8～9월 또는 초가을 비료가 부족하고, 비가 많은 해에 발생이 심하다.
			</li>



		</ul>



		<ul>
			<li class="photoH5"><h5>•&nbsp;증상설명</h5></li>
			<li class="article">주로 잎에 발생한다. 병반은 처음 황갈색의 작은 반점으로 나타나고, 진전되면
				5～6㎜의 큰 병반으로 확대되기도 한다. <br>병반 주위는 연한 갈색의 병무늬로 나타나고, 점차 진한 병무늬가
				형성되며, 병반의 중앙은 회백색으로 변한다. <br>오래된 병반 중앙부에는 암회색의 분생포자가 형성되고, 심하면
				그 중앙부의 조직이 파열되어 구멍이 뚫리기도 한다. <br>심하게 진전되면 잎 전체가 마르고 떨어진다.
			</li>



		</ul>


		<ul>
			<li class="photoH5"><h5>•&nbsp;방제방법</h5></li>
			<li class="article">- 건전 종자를 사용한다.<br>- 균형시비를 하여 건전한 생육을
				유도한다.<br>- 과습하지 않도록 한다.<br>- 병든 잎은 모아 태우거나 땅에 묻는다.
			</li>



		</ul>
		<br>
		<hr>







		<!-- 시기별,월별 TAB -->

		<!-- //시기별,월별 TAB -->

		<!-- 공통 사진영역 -->
		<!-- <script type="text/javascript">
			var tabActive1 = 0;
			var tabActive2 = 0;

			$(document).ready(function() {

				fncClickImg(1, tabActive1);

			});

			function fncChangeTab(flag) {
				if (flag == 1) {
					fncClickImg(1, tabActive1);

					$('#tabA').addClass("active");
					$('#tabAArea').show();

					$('#tabB').removeClass("active");
					$('#tabBArea').hide();
				} else if (flag == 2) {
					fncClickImg(2, tabActive2);

					$('#tabA').removeClass("active");
					$('#tabAArea').hide();

					$('#tabB').addClass("active");
					$('#tabBArea').show();
				}
			}

			function fncClickImg(tab, idx) {
				if (tab == 1) {
					tabActive1 = idx;
				} else if (tab == 2) {
					tabActive2 = idx;
				}
				$("#photoDataUl" + tab + " > li").removeClass("active");
				$("#photoDataUl" + tab + " > li").eq(idx).addClass("active");

				$(".imgLview").empty();

				var imgStr = $("#photoDataUl" + tab + " > li").eq(idx)
						.children("img");
				$(".imgLview").append(
						"<div class=\"imgLArea\"><img src=\""
								+ imgStr.attr("src") + "\" alt=\"\"></div>");
				$(".imgLview").append("<p>" + imgStr.attr("alt") + "</p>");
				//$(".imgLview").append($("#photoDataUl"+tab+" > li").eq(idx).children("span").html());
				var evt = $("#photoDataUl" + tab + " > li").eq(idx).children(
						"span").children("button").attr("onclick");
				$(".imgLview")
						.append(
								"<button type=\"button\" onclick=\"" + evt + "\">사진 다운로드</button>");
			}
		</script> -->

		<!-- 병 사진 정보  -->
		<div class="container mt-3" style="max-width: inherit;">
			<div id="accordion">
				<div class="card">
					<div class="card-header bg-success text-white"
						style="background-color: #7ebc12 !important; border-radius: 7px !important; height: 40px;">
						<a class="coll-btn btn-block text-white" data-bs-toggle="collapse"
							href="#collapseOne"> <i class="bi bi-caret-down" class="down"><span>사진정보</span></i>
						</a>
					</div>
					<div id="collapseOne" class="collapse show"
						data-bs-parent="#accordion">
						<div class="card-body scroll-image">
							<ul id="photoDataUl1">
								<li onclick="fncClickImg('1', '0');" class="active">
									<img alt="{사진 설명}" src="#"> 
									<img alt="{사진 설명}" src="#"> 
									<img alt="{사진 설명}" src="#"> 
									<img alt="{사진 설명}" src="#"> 
									<img alt="{사진 설명}"	src="#"></li>
								<br>
								<li>
									<span>{사진 설명}</span>
									<span>{사진 설명}</span>
									<span>{사진 설명}</span>
									<span>{사진 설명}</span>
									<span>{사진 설명}</span>									
								</li>
							</ul>
						</div>

					</div>

				</div>
			</div>
		</div>

	</div>

	<!-- 병해충 정보 출력 끝-->



	<!-- 푸터 시작 -->
	<div>
		<jsp:include page="layout/bottom.jsp" />
	</div>
	<!-- 푸터 끝 -->

	</script>
</body>
</html>