<%@page import="com.asnj.entity.Member"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<title>회원관리 test</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
    	    <td>이름</td>
    	    <td>ID</td>
    	    <td>Email</td>
    	    <td>직업</td>
    	    <td>가입 시간</td>
    	  </tr>
    	</thead>
    	
    	<tbody>
    	<c:forEach items="${list}" var="list">
 			<tr>
 				<td>${list.mem_user_id}</td>
  				<td>${list.mem_user_name}</td>
				<td>${list.mem_user_email}</td>
 				<td>${list.mem_user_job}</td>
 				<td>${list.mem_time}</td>
			</tr>
		</c:forEach>
    	</tbody>  
    	</table>
    </div>
  </div>
</body>
</html>