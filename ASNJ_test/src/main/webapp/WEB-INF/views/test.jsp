<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<script>
	// 네이버 공유
    function share() {
      var url = encodeURI(encodeURIComponent(myform.url.value));
      var title = encodeURI(myform.title.value);
      var shareURL = "https://share.naver.com/web/shareView?url=" + url + "&title=" + title;
      document.location = shareURL;
    }
</script>
<body>
<div class="container">
  <h2>Flask 연결 test</h2>
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Flask 통신 연결!</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <p>${test1} <!-- 파라미터를 이런식으로 입력 --></p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div> 
  <hr>
	<% String pre = request.getParameter("pre"); %>
    
	<form action="http://127.0.0.1:1234/test" method="post" enctype="multipart/form-data">
		<label for="imgfile">이미지</label>
		<input type="file" name="imgfile" id="imgfile">
		<br>
		<div class="img_view"><img src="" /></div>
		<input type="submit" value="submit">
	</form>
	
	<script>
    $("#imgfile").change(function(){
     if(this.files && this.files[0]) {
      var reader = new FileReader;
      reader.onload = function(data) {
       $(".img_view img").attr("src", data.target.result).width(700);          
      }
      reader.readAsDataURL(this.files[0]);
     }
    });
   </script>
	<%= pre %>
	<p>여기에 값이 나옵니다 ${imgtest}</p>
	<hr>
  <br>
	<span>
		<script type="text/javascript" src="https://ssl.pstatic.net/share/js/naver_sharebutton.js"></script>
		<script type="text/javascript">
		new ShareNaver.makeButton({"type": "e"});
		</script>
	</span>
</div>

	



</body>
</html>