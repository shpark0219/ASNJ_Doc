<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>공지사항</title>
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
									<a href="${cpath}/Pests.do?pest_crops=고추" class="dropdown-item">해충 피해</a>
								</div>
							</div>
							<a href="${cpath}/Diary.do" class="nav-item nav-link">농업일지</a> 
							<a href="${cpath}/Notice.do?num=1" class="nav-item nav-link active">커뮤니티</a> 
						</div>
					</div>
					</c:when>
					<c:otherwise>
					<div class="collapse navbar-collapse" id="navbarCollapse">
						<div class="navbar-nav ms-auto py-0">
							<a href="${cpath}/Introduce.do" class="nav-item nav-link">사이트 소개</a>
							<a href="${cpath}/Prediction.do" class="nav-item nav-link">병해충	분석</a>
							<div class="nav-item dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">병해충 정보</a>
								<div class="dropdown-menu m-0">
									<a href="${cpath}/Disease.do?disease_crops=고추" class="dropdown-item">병(病) 피해</a>
									<a href="${cpath}/Pests.do?pest_crops=고추" class="dropdown-item">해충 피해</a>
								</div>
							</div>
							<a href="${cpath}/Diary.do" class="nav-item nav-link">농업일지</a> 
							<a href="${cpath}/Notice.do?num=1" class="nav-item nav-link active">커뮤니티</a> 
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

	<!-- 커뮤니티 시작 -->
	<div class="container-xxl bg-white p-0"
		style="display: flex; justify-content: center; align-items: center; max-width: none;">
		<div class="container-fluid pt-4 px-4">
			<div class="mx-auto" style="width: 200px;">
				<div id="underline">
					<h3>커뮤니티</h3>
				</div>
				<br>
			</div>
		</div>
	</div>
	<br>
	<!-- 공지사항 탭 시작  -->
	<div class="container-xxl bg-white" style="display: flex; justify-content: center; align-items: center;">
		<div class="container-fluid pt-4 px-4">
			<ul class="nav nav-tabs nav-justified nav-pills nav-fill">
				<li class="nav-item">
					<a class="nav-link active" data-bs-toggle="tab" href="#actlist">
						<h4>
							<i class="bi bi-pen"></i>문의사항
						</h4>
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link"	data-bs-toggle="tab" href="#info">
						<h4>
							<i class="bi bi-megaphone"></i>공지사항
						</h4>
					</a>
			</li>
			</ul>
			<div class="tab-content">
				<div class="container tab-pane fade" id="info">
					<!-- 공지사항 시작 -->
					<div class="container" style="width: 100%; height: 600px; border-radius: 1em; margin-top: 5px;">
						<br>
						<div class="accordion accordion-flush" id="accordionFlushExample">
							<!-- #1 서비스 안내 -->
							<div class="accordion-item">
								<h2 class="accordion-header" id="flush-headingOne">
									<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
										aria-expanded="false" aria-controls="flush-collapseOne">
										<span>#1 서비스 안내</span>
									</button>
								</h2>
								<div id="flush-collapseOne" class="accordion-collapse collapse"	aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
									<div class="accordion-body" style="background-color: rgb(250, 255, 240);">
										<span>서비스 준비중입니다.</span>
									</div>
								</div>
							</div>
							<!-- #2 업데이트 안내  -->
							<div class="accordion-item">
								<h2 class="accordion-header" id="flush-headingTwo">
									<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
										<span>#2 업데이트 안내</span>
									</button>
								</h2>
								<div id="flush-collapseTwo" class="accordion-collapse collapse"	aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
									<div class="accordion-body" style="background-color: rgb(250, 255, 240);">
										<span>방제력 업데이트 중입니다.</span>
									</div>
								</div>
							</div>
							<!-- #3 알쓸농장 뜻 -->
							<div class="accordion-item">
								<h2 class="accordion-header" id="flush-headingThree">
									<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
										<span>#3 [알쓸농장] 뜻</span>
									</button>
								</h2>
								<div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
									<div class="accordion-body" style="background-color: rgb(250, 255, 240);">
										<span>알아두면 쓸모있는 농사에 대한 잡지식</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<br>
				<!-- 공지사항 끝 -->
				<!-- 문의사항 탭 시작  -->
				<div id="actlist" class="container tab-pane active">
					<div class="container-xxl p-0" style="display: flex; justify-content: center; align-items: center;">

						<!-- 문의사항 시작 -->
						<div class="container"	style="width: 100%; height: 600px; border-radius: 1em; margin-top: 5px;">
							<br>
							<!-- 문의사항 list 시작 -->
							<from action="">
							<table class="table table-bordered caption-top" style="vertical-align: middle;">
								<thead class="table table-light" align="center">
									<th>#</th>
									<th>제목</th>
									<th>내용</th>
									<th>작성자</th>
									<th style="width: 200px;">작성날짜</th>
									<c:if test="${loginMember.mem_user_job eq '관리자'}">
									<th>댓글</th>
									</c:if>
								</thead>
								<tbody>
								<c:forEach items="${questionlist}" var="list" varStatus="status">
									<c:set var="ques_time" value="${fn:split(list.ques_time, ' ')[0]}"/>
									<tr align="center">
										<td>${status.count}</td>
										<td>${list.ques_title}</td>
										<td>${list.ques_content}</td>
										<td>${list.ques_user_id}</td>
										<td>${ques_time}</td>
										<c:if test="${loginMember.mem_user_job eq '관리자'}">
										<td><button class="btn btn-sm btn-success" id="button-addon4"
										data-bs-toggle="modal" data-bs-target="#answerModal" type="button">답변</button></td>
										</c:if>
									</tr>
									<c:if test="${not empty answerlist[status.index].com_answer}">
										<c:set var="com_admin_time" value="${fn:split(answerlist[status.index].com_admin_time, ' ')[0]}"/>
										<tr align="center">
										<td></td>
										<td><c:if test="${not empty answerlist[status.index].com_answer}"><strong>답변 완료</strong></c:if></td>
										<td>${answerlist[status.index].com_answer}</td>
										<td>${answerlist[status.index].com_admin_id}</td>
										<td>${com_admin_time}</td>
										<c:if test="${loginMember.mem_user_job eq '관리자'}">
										<td><button class="btn btn-sm btn-warning" id="button-addon4"
										data-bs-toggle="modal" data-bs-target="#answerModal" type="button">수정</button></td>
										</c:if>
										</tr>
									</c:if>
						<!-- 답변하기 모달 뷰  시작 -->
						<!-- The Modal -->
						<div class="modal" id="answerModal" data-bs-backdrop="static">
							<div class="modal-dialog modal-lg modal-dialog-centered">
								<div class="modal-content">
									<!-- Modal Header -->
									<div class="modal-header">
										<h4 class="modal-title">답변하기</h4>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal"></button>
									</div>

									<!-- Modal body -->
									<div class="modal-body">
										<form action="${cpath}/AnswerInsert.do" method="post">
											<div id="dialog-confirm">
											<c:forEach items="${questionlist}" var="list" end="0">
												<div class="input-group mb-3">
													<span class="input-group-text">문의사항 [ ${list.ques_title} ]</span>
												</div>
													<p>${list.ques_content}</p>
													<%-- <input type="hidden" name="ques_pk" value="${list.ques_pk}"> --%>
												</c:forEach>
												<textarea style="width: 100%;" name="com_answer" placeholder="답변 내용을 입력하세요."></textarea>
											</div>

											<!-- Modal footer -->
											<div class="modal-footer">
												<button type="submit" class="btn btn-sm btn-success bi bi-check-circle">
													<span>등록</span>
												</button>
												<!-- <button type="submit" class="btn btn-sm btn-success bi bi-check-circle">
													<span> 삭제</span>
												</button> -->
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
						<!-- 답변하기 모달 뷰 끝  -->
								</c:forEach>
								</tbody>
							</table>
							<!-- 페이징 시작 --> <c:set value="${nownum}" var="num" />
							<nav class=" d-flex justify-content-center"
								aria-label="Page navigation example">
								<ul class="pagination">
									<li class="page-item"><a class="page-link"
										href="Notice.do?num=${num-1}" aria-label="Previous"> <span
											aria-hidden="true">&laquo;</span>
									</a></li>
									<c:forEach begin="1" end="${pageNum}" var="number">
										<li class="page-item"><a
											class="page-link <c:if test="${nownum == number}">active</c:if>"
											href="Notice.do?num=${number}">${number}</a></li>
									</c:forEach>
									<li class="page-item"><a class="page-link"
										href="Notice.do?num=${num+1}" aria-label="Next"> <span
											aria-hidden="true">&raquo;</span>
									</a></li>
								</ul>
							</nav>
							<!-- 페이징 끝 -->
							</from>
							<!-- 글쓰기 버튼 -->
							<div class=" d-flex justify-content-end">
								<button type="button"
									class="btn btn-sm btn-success bi bi-check-circle"
									data-bs-toggle="modal" data-bs-target="#myModal">
									<span> 글쓰기</span>
								</button>
							</div>
						</div>
						<!-- 문의사항 list 끝 -->
						
						<c:choose>
						<%-- 로그인 안 했을 때 --%>
						<c:when test="${empty loginMember}">
						<%-- 로그인 모달 시작 --%>
						<div class="modal" id="myModal" data-bs-backdrop="static">
							<div class="modal-dialog modal-lg modal-dialog-centered">
								<div class="modal-content">
									<div class="modal-header">
										<h4 class="modal-title">알림</h4>
										<button type="button" class="btn-close" onClick="close_pop();"data-bs-dismiss="modal"></button>
									</div>
		
									<div class="modal-body">
									<br><br><br>
									<div align="center">
										<h2>로그인 후 이용 가능합니다.</h2>
									</div>
									<br><br><br>
									<div class="modal-footer">
										<span class="text-center mb-0">비회원이십니까?	
											<a href="${cpath}/Joinpage.do">회원가입</a>
										</span>	&nbsp;&nbsp;&nbsp;
										<span class="text-center mb-0">로그인 하시겠습니까?	
											<a href="${cpath}/Loginpage.do">로그인</a>
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<%-- 로그인 모달창 끝 --%>
						</c:when>
						<c:otherwise>
						<!-- 글쓰기 모달 뷰  시작 -->
						<!-- The Modal -->
						<div class="modal" id="myModal" data-bs-backdrop="static">
							<div class="modal-dialog modal-lg modal-dialog-centered">
								<div class="modal-content">

									<!-- Modal Header -->
									<div class="modal-header">
										<h4 class="modal-title">문의사항</h4>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal"></button>
									</div>

									<!-- Modal body -->
									<div class="modal-body">
										<form action="${cpath}/QuestionInsert.do" method="post">
										<input type="hidden" name="mem_pk" value="${loginMember.mem_pk}">
										<input type="hidden" name="ques_user_id" value="${loginMember.mem_user_id}">
											<div id="dialog-confirm">
												<div class="input-group mb-3">
													<span class="input-group-text">제목</span>
													<input type="text" class="form-control" name="ques_title" placeholder="제목을 입력하세요."> 
												</div>
												<textarea style="width: 100%;" name="ques_content" placeholder="내용을 입력하세요."></textarea>
											</div>

											<!-- Modal footer -->
											<div class="modal-footer">
												<button type="submit" class="btn btn-sm btn-success bi bi-check-circle">
													<span> 등록</span>
												</button>
												<!-- <button type="submit" class="btn btn-sm btn-success bi bi-check-circle">
													<span> 삭제</span>
												</button> -->
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
						</c:otherwise>
						</c:choose>
						<!-- 글쓰기 모달 뷰 끝  -->
						
						
					</div>
					<!-- 문의사항 끝  -->
				</div>
			</div>
			<br>
			<br>
			<!-- 문의사항 탭 끝  -->
		</div>
	</div>
	<!-- 마이페이지 탭 끝  -->
	<!-- 마이페이지 끝  -->

	<!-- 푸터 시작  -->
	<div>
		<jsp:include page="layout/bottom.jsp" />
	</div>
	<!-- 푸터 끝 -->

</body>
</html>