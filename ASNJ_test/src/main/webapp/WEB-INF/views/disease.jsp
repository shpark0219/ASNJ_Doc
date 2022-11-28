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
	    height:2px !important;
	    /* border:none; */
	}
	
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
					<div class="collapse navbar-collapse" id="navbarCollapse">
						<div class="navbar-nav ms-auto py-0">
							<a href="${cpath}/Introduce.do" class="nav-item nav-link">사이트
								소개</a> <a href="${cpath}/Prediction.do" class="nav-item nav-link">병해충
								분석</a>
							<div class="nav-item dropdown">
								<a href="#" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown">병해충 정보</a>
								<div class="dropdown-menu m-0">
									<a href="${cpath}/Disease.do" class="dropdown-item active">병(病) 피해</a>
									<a href="${cpath}/Pests.do" class="dropdown-item">해충 피해</a>
								</div>
							</div>
							<a href="${cpath}/Diary.do" class="nav-item nav-link">농업일지</a> 
							<a href="${cpath}/Notice.do" class="nav-item nav-link">커뮤니티</a> 
							<a href="${cpath}/Mypage.do" class="nav-item nav-link">마이페이지</a>
							<a href="${cpath}/UserInfo.do" class="nav-item nav-link">회원정보 관리</a>
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
		<div class="main_category row align-items-center table table-hover" style="text-align: center; width: 80%; margin: auto;">
			<div class="col col-md-3 p-2 mt-3" style="text-align: end;">
				<img alt="선택아이콘" src="resources/image/handTouch.png" style="width: 30px; height: 30px; margin-bottom: 10px;">
				<h4 class="searchTitle" style="display: inline-block;">작물 선택</h4>
			</div>
			<div class="w-25 p-5 col-md-auto flex-fill">
				<div id="NM_THEME_CATE_GROUPS" class="group_category"
					data-demo-key="default">
					<div class="list_category_wrap">
						<select
							class="form-select form-select-lg bg-white border-1 w-100 py-3 ps-4 pe-1">
							<option><a href="#" role="tab" class=""
									aria-selected="false" aria-controls="" data-clk=""
									data-panel-code="">고추</a></option>
							<option><a href="#" role="tab" class=""
									aria-selected="false" aria-controls="" data-clk=""
									data-panel-code="">오이</a></option>
							<option><a href="#" role="tab" class=""
									aria-selected="false" aria-controls="" data-clk=""
									data-panel-code="">파</a></option>
							<option><a href="#" role="tab" class=""
									aria-selected="false" aria-controls="" data-clk=""
									data-panel-code="">호박</a></option>
						</select>
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
					<ul class="list_theme" style="padding-right: 32px;">						
						<li class="theme_item" data-gdid="C3S_RANKING_https://post.naver.com/viewer/postView.naver?memberNo=49797427&amp;volumeNo=34818483"
							data-da-position="true">
							<a href="#" class="theme_thumb" data-clk="tcc_fin.list1cont1" target="_blank">
								<img src="http://webbuild1.knu.ac.kr/~bskim/image/powd1.jpg" alt="" width="170" height="114" onerror="this.outerHTML='<span class=\'pm_noimg\'>
								<span class=\'noimg_text\'>이미지 준비중</span></span>'" loading="lazy"> 
								<span class="thumb_bd"></span>

						</a> 
						<a href="" class="theme_info" data-clk="tcc_fin.list1cont1" target="_blank">
								<strong class="title elss">흰가루병 (白粉病)</strong>
								<p class="desc">노지와 하우스재배에서 모두 발생하며 전국적으로 심하게 발생하고 있다. 
								흰가루병은 그 피해가 직접적으로 잘 나타나지 않기 때문에 재배농가에서는 방제를 소흘히 하는 경향이나
								초세가 약해져 과실의 착생과 비대가 불량해 진다.</p>								
						</a></li>
						<hr>			
						
						<li class="theme_item" data-gdid="C3S_RANKING_https://post.naver.com/viewer/postView.naver?memberNo=49797427&amp;volumeNo=34818483"
							data-da-position="true">
							<a href="#" class="theme_thumb" data-clk="tcc_fin.list1cont1" target="_blank">
								<img src="http://webbuild1.knu.ac.kr/~bskim/image/powd1.jpg" alt="" width="170" height="114" onerror="this.outerHTML='<span class=\'pm_noimg\'>
								<span class=\'noimg_text\'>이미지 준비중</span></span>'" loading="lazy"> 
								<span class="thumb_bd"></span>

						</a> 
						<a href="" class="theme_info" data-clk="tcc_fin.list1cont1" target="_blank">
								<strong class="title elss">흰가루병 (白粉病)</strong>
								<p class="desc">노지와 하우스재배에서 모두 발생하며 전국적으로 심하게 발생하고 있다. 
								흰가루병은 그 피해가 직접적으로 잘 나타나지 않기 때문에 재배농가에서는 방제를 소흘히 하는 경향이나
								초세가 약해져 과실의 착생과 비대가 불량해 진다.</p>								
						</a></li>
						<hr>
						
						<li class="theme_item" data-gdid="C3S_RANKING_https://post.naver.com/viewer/postView.naver?memberNo=49797427&amp;volumeNo=34818483"
							data-da-position="true">
							<a href="#" class="theme_thumb" data-clk="tcc_fin.list1cont1" target="_blank">
								<img src="http://webbuild1.knu.ac.kr/~bskim/image/powd1.jpg" alt="" width="170" height="114" onerror="this.outerHTML='<span class=\'pm_noimg\'>
								<span class=\'noimg_text\'>이미지 준비중</span></span>'" loading="lazy"> 
								<span class="thumb_bd"></span>

						</a> 
						<a href="" class="theme_info" data-clk="tcc_fin.list1cont1" target="_blank">
								<strong class="title elss">흰가루병 (白粉病)</strong>
								<p class="desc">노지와 하우스재배에서 모두 발생하며 전국적으로 심하게 발생하고 있다. 
								흰가루병은 그 피해가 직접적으로 잘 나타나지 않기 때문에 재배농가에서는 방제를 소흘히 하는 경향이나
								초세가 약해져 과실의 착생과 비대가 불량해 진다.</p>								
						</a></li>
						<hr>
						
						<li class="theme_item" data-gdid="C3S_RANKING_https://post.naver.com/viewer/postView.naver?memberNo=49797427&amp;volumeNo=34818483"
							data-da-position="true">
							<a href="#" class="theme_thumb" data-clk="tcc_fin.list1cont1" target="_blank">
								<img src="http://webbuild1.knu.ac.kr/~bskim/image/powd1.jpg" alt="" width="170" height="114" onerror="this.outerHTML='<span class=\'pm_noimg\'>
								<span class=\'noimg_text\'>이미지 준비중</span></span>'" loading="lazy"> 
								<span class="thumb_bd"></span>

						</a> 
						<a href="" class="theme_info" data-clk="tcc_fin.list1cont1" target="_blank">
								<strong class="title elss">흰가루병 (白粉病)</strong>
								<p class="desc">노지와 하우스재배에서 모두 발생하며 전국적으로 심하게 발생하고 있다. 
								흰가루병은 그 피해가 직접적으로 잘 나타나지 않기 때문에 재배농가에서는 방제를 소흘히 하는 경향이나
								초세가 약해져 과실의 착생과 비대가 불량해 진다.</p>								
						</a></li>
						<hr>
						
						<li class="theme_item" data-gdid="C3S_RANKING_https://post.naver.com/viewer/postView.naver?memberNo=49797427&amp;volumeNo=34818483"
							data-da-position="true">
							<a href="#" class="theme_thumb" data-clk="tcc_fin.list1cont1" target="_blank">
								<img src="http://webbuild1.knu.ac.kr/~bskim/image/powd1.jpg" alt="" width="170" height="114" onerror="this.outerHTML='<span class=\'pm_noimg\'>
								<span class=\'noimg_text\'>이미지 준비중</span></span>'" loading="lazy"> 
								<span class="thumb_bd"></span>

						</a> 
						<a href="" class="theme_info" data-clk="tcc_fin.list1cont1" target="_blank">
								<strong class="title elss">흰가루병 (白粉病)</strong>
								<p class="desc">노지와 하우스재배에서 모두 발생하며 전국적으로 심하게 발생하고 있다. 
								흰가루병은 그 피해가 직접적으로 잘 나타나지 않기 때문에 재배농가에서는 방제를 소흘히 하는 경향이나
								초세가 약해져 과실의 착생과 비대가 불량해 진다.</p>								
						</a></li>
						<hr>
						
						<li class="theme_item" data-gdid="C3S_RANKING_https://post.naver.com/viewer/postView.naver?memberNo=49797427&amp;volumeNo=34818483"
							data-da-position="true">
							<a href="#" class="theme_thumb" data-clk="tcc_fin.list1cont1" target="_blank">
								<img src="http://webbuild1.knu.ac.kr/~bskim/image/powd1.jpg" alt="" width="170" height="114" onerror="this.outerHTML='<span class=\'pm_noimg\'>
								<span class=\'noimg_text\'>이미지 준비중</span></span>'" loading="lazy"> 
								<span class="thumb_bd"></span>

						</a> 
						<a href="" class="theme_info" data-clk="tcc_fin.list1cont1" target="_blank">
								<strong class="title elss">흰가루병 (白粉病)</strong>
								<p class="desc">노지와 하우스재배에서 모두 발생하며 전국적으로 심하게 발생하고 있다. 
								흰가루병은 그 피해가 직접적으로 잘 나타나지 않기 때문에 재배농가에서는 방제를 소흘히 하는 경향이나
								초세가 약해져 과실의 착생과 비대가 불량해 진다.</p>								
						</a></li>
						<hr>
						
						<li class="theme_item" data-gdid="C3S_RANKING_https://post.naver.com/viewer/postView.naver?memberNo=49797427&amp;volumeNo=34818483"
							data-da-position="true">
							<a href="#" class="theme_thumb" data-clk="tcc_fin.list1cont1" target="_blank">
								<img src="http://webbuild1.knu.ac.kr/~bskim/image/powd1.jpg" alt="" width="170" height="114" onerror="this.outerHTML='<span class=\'pm_noimg\'>
								<span class=\'noimg_text\'>이미지 준비중</span></span>'" loading="lazy"> 
								<span class="thumb_bd"></span>

						</a> 
						<a href="" class="theme_info" data-clk="tcc_fin.list1cont1" target="_blank">
								<strong class="title elss">흰가루병 (白粉病)</strong>
								<p class="desc">노지와 하우스재배에서 모두 발생하며 전국적으로 심하게 발생하고 있다. 
								흰가루병은 그 피해가 직접적으로 잘 나타나지 않기 때문에 재배농가에서는 방제를 소흘히 하는 경향이나
								초세가 약해져 과실의 착생과 비대가 불량해 진다.</p>								
						</a></li>											

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

</body>
</html>