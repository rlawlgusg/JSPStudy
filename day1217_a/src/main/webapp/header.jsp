<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${not empty member }">
	로그인하였습니다.
	<a href="/day1217_a/logout.jsp">로그아웃</a>
	</c:if>
	<c:if test="${ empty member }">
	<a href="/day1217_a/login.jsp">로그인</a>
	</c:if>
</body>
</html>