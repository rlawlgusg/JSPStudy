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
	String name = request.getParameter("name");
	
	String method = request.getMethod();
	int contentLenghth = request.getContentLength();
	String uri = request.getRequestURI();
	StringBuffer url = request.getRequestURL();
	String serverName = request.getServerName();
	int port = request.getServerPort();
	String ip = request.getRemoteAddr();
%>
이름 : <%=name%>
요청방식 : <%=method%>
요청정보길이 : <%=contentLenghth %>
요청 URI : <%= uri %>
요청 URL : <%= url %>
서버 이름 : <%= serverName %>
포트 번호 : <%= port %>
ip주소 : <%= ip %>
</body>
</html>