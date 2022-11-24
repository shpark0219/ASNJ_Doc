<%@page import="com.asnj.entity.Question"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의사항</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
	<div class="panel panel-default">
    <div class="panel-heading"><h1>Member LIST</h1></div>
    <div class="panel-body">
    	<table class ="table table-hover table-bordered">
    	<thead>
    	  <tr>
    	    <td>번호</td>
    	    <td>제목</td>
    	    <td>내용</td>
    	    <td>작성자</td>
    	    <td>작성 시간</td>
    	  </tr>
    	</thead>
    	
    	<tbody>
    	<c:forEach items="${list}" var="list">
 			<tr>
 				<td>${list.ques_pk}</td>
 				<td>${list.ques_title}</td>
  				<td>${list.ques_content}</td>
  				<td>${list.ques_user_id}</td>
 				<td>${list.ques_time}</td>
			</tr>
		</c:forEach>
    	</tbody>  
    	</table>
    </div>
  </div>
</body>
</html>