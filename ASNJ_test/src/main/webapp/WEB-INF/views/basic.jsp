<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>순천 스인개 게시판</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="${cpath}/resources/css/index.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function () {
		//alert("제이쿼리 시작!!");
		boardList();
	});//제이쿼리 묶어주는 영역 끝!!
	
		function boardList() {
			// ajax기본구조 만들기 : 페이지요청을 다시 하는게 아닌 서버와 통신을 해서 데이터를 가져옴
			// Rest Server
			// 데이터는 JSON 으로...
			// [{key:value,key:value},{},{},.....]
			$.ajax({
				url : "${cpath}/board",
				type : "get",
				// data 리스트만 띄워줄 거니까 보내줄 데이터 없음..			
				dataType : "json", // 서버가 클라이언트에게 돌려줄 데이터 형식
				success : callBack,// 따로 함수를 만들어 불러올 예정(함수 이름만 기술)			
				error : function () {
					alert("리스트 비동기 방식 통신 실패!!!");
				}
			}); // ajax 끝
		}
		
		
		// 리스트 불러오는 ajax가 성공하면 실행할 함수
		function callBack(data) {
			//alert(data);
			//console.log(data);
			
			var bList = "<table class='table tabl-hover table-bordered'>";
			bList += "<tr>";
			bList += "<td>번호</td>";
			bList += "<td>제목</td>";
			bList += "<td>작성자</td>";
			bList += "<td>작성일</td>";
			bList += "<td>조회수</td>";			
			bList += "</tr>";
			// 가져온 data에서 JSON데이터를 반복문 통해 만들기
			
			// 제이쿼리에서 반복하는 함수
			// $.each(데이터, 데이터를 처리할 함수);
			// function (매개변수){실행문장} 을 (매개변수)=>{실행문장}으로 사용 가능
			$.each(data, (index, obj)=>{
				//console.log(index);
				bList += "<tr>";
				bList += "<td>"+obj.idx+"</td>";
				// a태그로 제목 누르면 글 내용이 보이게...
				// a태그에 href가 요청이 아니라 자바스크립트 함수로 가도록.....javascript:
				bList += "<td><a href='javascript:cview("+obj.idx+")'>"+obj.title+"</a></td>";				
				bList += "<td>"+obj.writer+"</td>";
				bList += "<td>"+obj.indate.split(" ")[0]+"</td>";
				bList += "<td id='count"+obj.idx+"'>"+obj.count+"</td>";			
				bList += "</tr>";
				
				// 한 줄은  게시글 번호,제목,작성자,작성일,조회수이면 제목을 누르면 자세히보기 내용(tr)이 생긴다
				bList += "<tr style='display:none' id='c"+obj.idx+"'>";
				bList += "<td>내용</td>";
				bList += "<td colspan='4'>"
				bList += "<textarea class='form-control' id='nc"+obj.idx+"' rows='7'>"+obj.content+"</textarea>";
				// 로그인 된 아이디와 게시글 작성자, 곧 memId가 같다면 수정이 가능
				if("${loginMember.memId}" == obj.memId){
					bList += "<button class='btn btn-sm btn-warning' onclick='goUpdate("+obj.idx+")'>수정</button>&nbsp;";
					bList += "<button class='btn btn-sm btn-primary' onclick='goDel("+obj.idx+")'>삭제</button>";					
				}else{
					//로그인 한 사람의 글이 아니라면..닫기 버튼...
					bList += "<button disabled class='btn btn-sm btn-warning' onclick='goUpdate("+obj.idx+")'>수정</button>&nbsp;";
					bList += "<button class='btn btn-sm btn-danger' onclick='closeFn("+obj.idx+")'>닫기</button>";
				}
				
				bList += "</td>";
				bList += "</tr>";
			});
			
			bList += "<tr>";
			bList += "<td>";
			bList += "<button class='btn btn-sm btn-info' onclick='goForm()'>글쓰기</button>";
			bList += "</td>";		
			bList += "</tr>";
			
			bList += "</table>";
			
			$("#list").html(bList);
			
		} // callBack함수 끝
		
		function goForm() {
			// 글쓰기 버튼 누르면 게시판 리스트를 화면에서 없애고 글쓰기 화면 보여주기
			$("#list").css("display","none");
			$("#wform").css("display","block");
		}
		
		function insertFn() {
			// title, content, writer 3개의 파라미터를 가져와 ajax통신을 통해 DB에 값을 넣어주기
			// form태그 id에 들어가 있는 값을 직렬화해서 가져오는 함수
			var fData = $("#frm").serialize();
			console.log(fData);
			$.ajax({
				url : "${cpath}/board",
				type : "post",
				data : fData,
				// dataType : 받을게 없음
				success : boardList, //onclick함수가 아니라서 이름만 기술
				error : function () {
					alert("글쓰기 통신 실패!!!");
				}
				
			});//글쓰기 통신하는 ajax..
				// 글쓰기 화면 없애고 다시 게시판 리스트 보여주기
				$("#list").css("display","block");
				$("#wform").css("display","none");
				
				// 글쓰기 form에 있는 내용 초기화
				
				// 초기화 1) value값 초기화
				// jQuery에서 val()만 하면 value를 가져오는 get역할
				// val(값) 값을 넣어주는 set역할
				// $("#title").val("");
				// $("#writer").val("");
				// $("#content").val("");
				
				// 초기화 2) jQuery 함수 중 trigger
				// click을 직접 하지 않아도 알아서 click의 행동이 되게하는 함수
				$("#reset").trigger("click");
				
		}// insertFn 함수 끝..
		
		function cview(idx) {
			// c14,c17,.... c+idx가 넘어옴..
			if($("#c"+idx).css("display") == "none"){
				// 내용이 열릴 때 조회수가 +1씩 증가하기..
				$.ajax({
					url : "${cpath}/updateCount/"+idx,
					type : "get",
					// boardList 함수를 부르면 모든 게시글을 다시 불러오니까
					// 해당게시글만 열고 닫기 해서 그 게시글의 조회수만 다시 불러오고자 
					// success에 함수 직접 만들기
					success : function (vo) {
						//console.log(vo);
						$("#count"+idx).text(vo.count);
					},
					error : function () {
						alert("조회수 올리기 실패...!")
					}					
					
				});// 조회수 올려주는 ajax 끝..
				
				$("#c"+idx).css("display","table-row");
			}else{
				$("#c"+idx).css("display","none");				
			}
			
		}// 게시글 보여주는 함수 끝..
		
		function goDel(idx) {
			// alert, console.log, confirm --> 확인 및 표시 도구들..
			// confirm 눌러서 생긴 true/false를 조건식에 넣어 if문은 true일 때 작동
			var real = confirm("정말로 삭제하시겠습니까??");
			if(real){
				$.ajax({								// idx보내는 방법 2)PathVariable
					url : "${cpath}/board/"+idx,
					type : "delete",
					// data : {"idx" : idx}, --> idx보내는 방법  1)파라미터로 보내기
					success : boardList,
					error : function () {
						alert("글쓰기 삭제 실패...")
					}				
				});	// 삭제 ajax 끝..		
				
			}// if 끝..			
			
		}// 게시글 삭제(goDel) 함수 끝..
		
		function goUpdate(idx) {
			var newContent = $("#nc"+idx).val();
			$.ajax({
				url : "${cpath}/board",
				type : "put",
				contentType : "application/json;charset=utf-8",
				data : JSON.stringify({"idx" : idx, "content" : newContent}), 
				success : boardList,
				error : function () {
					alert("글쓰기 수정 실패...")
				}
				// {"idx" : idx, "content" : newContent}로 보내면
				// 스프링이 알아서 파라미터 수집				
			});		
			
		}// update함수 끝
		
		function closeFn(idx) {
			$("#c"+idx).css("display","none");
		}
		
	
	
</script>
</head>
<body>

	<div class="container">
		<h2>Spring MVC 03</h2>
		<div class="panel panel-default">
			<div class="panel-heading">
				<%-- if-else문 이용 가능
				표현식에서 loginmember.memId는 우리가 예전부터 사용했던
				(Member)session.getAttribute("loginMember").getId()
				EL식에서 empty는 !=와 같은 의미이다..
			 --%>
				<c:choose>
					<c:when test="${empty loginMember}">
						<form class="form-inline" action="${cpath}/Login.do" method="post">
							<div class="form-group">
								<label for="memId">아이디:</label> <input type="text"
									class="form-control" name="memId" id="memId">
							</div>
							<div class="form-group">
								<label for="memPw">비밀번호:</label> <input type="password"
									class="form-control" name="memPw" id="memPw">
							</div>
							<button type="submit" class="btn btn-default">로그인</button>
						</form>
					</c:when>
					<c:otherwise>
						<%-- 로그인을 하면 "00님 환영합니다!"와 로그아웃 버튼 만들기 --%>
						<div class="form-group">
							<label>${loginMember.memName}님 환영합니다!</label> <a
								href="${cpath}/Logout.do" class="btn btn-sm btn-success">로그아웃
							</a>
						</div>
					</c:otherwise>
				</c:choose>

			</div>
			<div class="panel-body" id="list" style="display: block"></div>
			<div class="panel-body" id="wform" style="display: none">
				<!-- form태그 action, method 속성 삭제 - ajax로 보내야 하므로 form태그의 name값
				들을 자바스크립트가 받아줘야함...그래서 id를 부여 - submit type을 button으로 바꾸기
			 -->
				<form class="form-horizontal" id="frm">
					<input type="hidden" name="memId" value="${loginMember.memId}">
					<div class="form-group">
						<label class="control-label col-sm-2" for="title">제목:</label>
						<!-- input태그의 id와 label태그의 for와 일치 시켜준다. -->
						<div class="col-sm-10">
							<input type="text" class="form-control" name="title" id="title"
								placeholder="title">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="content">내용:</label>
						<div class="col-sm-10">
							<textarea rows="10" class="form-control" id="content"
								name="content"></textarea>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="writer">작성자:</label>
						<div class="col-sm-10">
							<input type="text" readonly class="form-control" name="writer"
								id="writer" value="${loginMember.memId}">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="button" onclick="insertFn()" class="btn btn-default">등록</button>
							<button type="reset" class="btn btn-default" id="reset">취소</button>
							<a href="<c:url value="/boardAjaxMain.do"/>" class="btn btn-default">목록으로 돌아가기</a>
						</div>
					</div>
				</form>
			</div>
			<div class="panel-footer">개발새발!!😒</div>
		</div>
	</div>

</body>
</html>
