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
	
	<p>���̵�: ><%=person.getId() %>
	�̸�: ><%=person.getName() %></p>
	<%
		person.setId(20220001);
		person.setName("������");
	%>
	
	<jsp:include page="useBeanTest03.jsp"></jsp:include>
	
</body>
</html>