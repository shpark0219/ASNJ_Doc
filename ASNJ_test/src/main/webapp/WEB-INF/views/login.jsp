<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&family=Open+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"	rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="resources/css/style.css" rel="stylesheet">

</head>
<body>
	<div class="container-fluid">
		<div class="row h-100 align-items-center justify-content-center" style="min-height: 100vh;">
			<div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4">
				<div class="bg-white rounded p-4 p-sm-5 my-4 mx-3">
					<a href="index.jsp"><img src="resources/img/logo/logo2.png"></a>
					<h3 class="text-center">로그인</h3>
					<br>
							<form class="form-inline" action="Login.do" method="post">
								<div class="form-floating mb-3">
									<input type="text" class="form-control" name="mem_user_id" id="mem_user_id" placeholder="name@example.com">
									<label for="floatingInput">아이디 </label>
								</div>
								<div class="form-floating mb-3">
									<input type="password" class="form-control" name="mem_user_pw" id="mem_user_pw" placeholder="비밀번호를 입력하세요.">
									<label for="floatingPassword">비밀번호</label>
								</div>
									<button type="submit" class="btn btn-sm btn-success py-3 w-100 mb-4">로그인</button>
							</form>
							<p class="text-center mb-0">
								Don't have an Account? <a href="${cpath}/Joinpage.do">회원가입</a>
							</p>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>