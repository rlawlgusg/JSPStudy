<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body bgcolor="red">
	<h2>red�Դϴ�.</h2>
	<hr>
	<jsp:forward page="move.jsp">
		<jsp:param value="pink" name="color"/>
		<jsp:param value='<%=URLEncoder.encode("������") %>' name="name"/>
	</jsp:forward>
</body>
</html>