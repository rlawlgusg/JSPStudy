<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page errorPage="error.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("euc-kr");
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	%>
	�Է��� ������ ������ �����ϴ�.
	<hr>
	�̸� : <%=name %> <br>
	���� : <%=age %> <br>

</body>
</html>