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
<link href="resources/image/favicon.ico" rel="icon">

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

	<!-- Footer Start -->
	<div class="container-fluid bg-primary text-white footer mt-5 wow fadeIn"
		data-wow-delay="0.1s">
		<div class="container py-5 px-lg-5">
			<div class="row gy-5 gx-4">
				<!-- <div class="col-12">
					<h5 class="fw-bold text-white mb-4">Subscribe Our Newsletter</h5>
					<div class="position-relative" style="max-width: 400px;">
						<input class="form-control bg-white border-0 w-100 py-3 ps-4 pe-5"
							type="text" placeholder="Enter your email">
						<button type="button"
							class="btn btn-primary py-2 px-3 position-absolute top-0 end-0 mt-2 me-2">Submit</button>
					</div>
				</div> -->
				<div class="col-lg-3 col-md-2">
					<img alt="" src="resources/image/nong.png" style="float : left; width: 70px; height: 90px;">&nbsp;&nbsp;&nbsp;
					<h1 class="text-white mb-4" style="font-style: italic; display: inline-block;">알쓸<br>농잡</h1>				
					<!-- <h1 class="text-white mb-4" style="font-style: italic;">농잡</h1>	 -->				
				</div>
				<div class="col-lg-4 col-md-3">
					<div class="row gy-5 g-4">
						<div class="col-md-8">
							<h5 class="fw-bold text-white mb-4">About Us</h5>
							<a class="btn btn-link" href="${cpath}/introduce.do">사이트소개</a> <a class="btn btn-link"
								href="">공지사항</a> <a class="btn btn-link" href="">연락처</a> <a
								class="btn btn-link" href="">광고문의</a>
						</div>
					</div>
				</div>
				<div class="col-lg-5 col-md-5">					
						<h5 class="fw-bold text-white mb-4">Get In Touch</h5>
						<p class="mb-2">
							<i class="fa fa-map-marker-alt me-3"></i>소재지 : 전라남도 순천시 석현동 87
							5층, 스마트인재개발원 순천점
						</p>
						<p class="mb-2">
							<i class="fa fa-phone-alt me-3"></i>TEL&nbsp;: 061-754-3501
						</p>
						<p class="mb-2">
							<i class="fa fa-envelope me-3"></i>팀원 : &nbsp;(팀장)송영지,&nbsp;(팀원)김도연,&nbsp;김동현,&nbsp;박승현
						</p>
						<div class="d-flex pt-2">
							<a class="btn btn-outline-light btn-social" href=""> <i
								class="fab fa-twitter"></i>
							</a> <a class="btn btn-outline-light btn-social" href=""> <i
								class="fab fa-facebook-f"></i>
							</a> <a class="btn btn-outline-light btn-social" href=""> <i
								class="fab fa-youtube"></i>
							</a> <a class="btn btn-outline-light btn-social" href=""> <i
								class="fab fa-linkedin-in"></i>
							</a>
						</div>
					</div>
					<!-- <div class="col-md-6 col-lg-4 mt-lg-n5">
					<div class="bg-light rounded" style="padding: 30px;">
						<input type="text" class="form-control border-0 py-2 mb-2"
							placeholder="Name"> <input type="email"
							class="form-control border-0 py-2 mb-2" placeholder="Email">
						<textarea class="form-control border-0 mb-2" rows="2"
							placeholder="Message"></textarea>
						<button class="btn btn-primary w-100 py-2">Send Message</button>
					</div>
				</div> -->
				</div>
			</div>
			<div class="container px-lg-5">
				<div class="copyright">
					<div class="row">
						<div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
							&copy; <a class="border-bottom" href="index.jsp">Alsseulnongjob</a>, All
							Right Reserved.

							<!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
							Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML
								Codex</a> </br> Distributed By <a class="border-bottom"
								href="https://themewagon.com" target="_blank">ThemeWagon</a>
						</div>
						<div class="col-md-6 text-center text-md-end">
							<div class="footer-menu">
								<a href="#">회사소개</a> <a href="#">서비스 가이드</a> <a href="#">개인정보보호정책</a> <a
									href="#">이용약관</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Footer End -->

		<!-- Back to Top -->
		<a href="#" class="btn btn-lg btn-secondary btn-lg-square back-to-top"><i
			class="bi bi-arrow-up"></i></a>
</body>
</html>