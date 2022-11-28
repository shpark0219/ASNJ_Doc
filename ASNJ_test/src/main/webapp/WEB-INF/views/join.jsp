<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

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


<script>
        function check_pw(){
            var pw = document.getElementById('floatingPassword').value;
            var SC = ["!","@","#","$","%"];
            var check_SC = 0;
            
            if(document.getElementById('floatingPassword').value !='' && document.getElementById('floatingPassword2').value!=''){
                if(document.getElementById('floatingPassword').value==document.getElementById('floatingPassword2').value){
                    document.getElementById('check').innerHTML='비밀번호가 일치합니다.'
                    document.getElementById('check').style.color='blue';
                }
                else{
                    document.getElementById('check').innerHTML='비밀번호가 일치하지 않습니다.';
                    document.getElementById('check').style.color='firebrick';
                }
            }
        }
    </script>
<script>
	function signup() {
		var pw = document.getElementById('floatingPassword').value;
		var SC = ["!","@","#","$","%","^","&","*"];
        var check_SC = 0;
		if(pw.length < 6 || pw.length>16){
            window.alert('비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.');
            document.getElementById('pw').value='';
            return false;
        }
        for(var i=0;i<SC.length;i++){
            if(pw.indexOf(SC[i]) != -1){
                check_SC = 1;
            }
        }
        if(check_SC == 0){
            window.alert('!,@,#,$,%,^,&,* 의 특수문자가 들어가 있지 않습니다.')
            document.getElementById('pw').value='';
            return false;
        }
        if(document.getElementById('floatingPassword').value !='' && document.getElementById('floatingPassword2').value!=''){
            if(document.getElementById('floatingPassword').value==document.getElementById('floatingPassword2').value){
            	window.alert('회원가입 성공');
            	document.getElementById('frm').submit();
            }
            else{
            	window.alert('비밀번호가 일치하지 않습니다.');
            	return false;
            }
        }
	}
</script>


<body>
	<div class="container-fluid">
		<div class="row h-100 align-items-center justify-content-center"
			style="min-height: 100vh;">
			<div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4">
				<div class="bg-white rounded p-4 p-sm-5 my-4 mx-3">
					<a href="index.jsp"><img src="resources/img/logo/logo2.png"></a>
					<h3 class="text-center">회원가입</h3>
					<br>
					<form class="form-inline" action="${cpath}/Loginpage.do" method="post">
						<div class="form-floating mb-3">
							<label for="floatingInput">ID</label>
							<input type="text" class="form-control" name="id" id="mem_user_id" >
						</div>
						<div class="form-floating mb-3">
							<label for="floatingInput">Password (특수문자 포함 6자 이상)</label>
							<input type="password" class="form-control" name="pw" id="mem_user_pw" onchange="check_pw()">
						</div>
						<div class="form-floating mb-3">
                            <input type="password" name="pw2" class="form-control" id="mem_user_pw2" onchange="check_pw()">
                            <label for="floatingPassword">Password Check</label>
                            &nbsp;<span id="check"></span>
                        </div>
						<div class="form-floating mb-3">
							<label for="floatingText">닉네임</label>
							<input type="text" class="form-control" name="floatingText" id="mem_user_name">
						</div>
						<div class="form-floating mb-3">
							<label for="mem_user_email">이메일</label>
							<input type="email" class="form-control" name="mem_user_email" id="mem_user_email">
						</div>
						<li>사용자</li>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="mem_user_job" id="mem_user_job" value="농부">
								<label class="form-check-label" for="mem_user_job"> 농부 </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="mem_user_job2" id="mem_user_job" value="일반인">
							<label class="form-check-label" for="mem_user_job"> 홈가드닝 </label>
						</div>
						<br>
						<button type="submit" class="btn btn-sm btn-success py-3 w-100 mb-4">회원가입</button>
						<p class="text-center mb-0">Already have an Account? <a href="${cpath}/Loginpage.do">로그인</a></p>
					</form>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
</body>
</html>