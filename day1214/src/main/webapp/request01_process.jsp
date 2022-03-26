<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String userid = request.getParameter("id");
	String password = request.getParameter("passwd");
	String []hobby = request.getParameterValues("hobby");
%>
<p>아이디 : <%=userid%></p>
<p>비밀번호 : <%=password %></p>
취미 : 
<%
	for(String h:hobby){
		out.println(h+ " ");	
	}
%>
</body>
</html>