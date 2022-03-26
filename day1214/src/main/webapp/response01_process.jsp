<%@page import="com.sist.dao.MemberDAO"%>
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
	MemberDAO dao = new MemberDAO();
	String userid = request.getParameter("id");
	String password = request.getParameter("passwd");
	if(dao.isMember(userid, password)){
		response.sendRedirect("response01_success.jsp");
	}else{
		response.sendRedirect("response01_failed.jsp");
	}
%>
</body>
</html>