<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="person" class="com.sist.vo.Person" scope="request"/>
	<p>���̵�: ><%=person.getId() %></p>
	<p>�̸�: ><%=person.getName() %></p>
</body>
</html>