<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		ArrayList list = new ArrayList();
		list.add("���");
		list.add("����");
		
		Date today = new Date();
	%>
	list : <%=	list	%> <br>
	today : <%=	today %>
</body>
</html>