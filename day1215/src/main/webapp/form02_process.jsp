<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
	/*MultipartRequest multi = new MultipartRequest(request, "c:/upload",1024*1024*5,"utf-8",new DefaultFileRenamePolicy());*/
	String path = request.getRealPath("upload");
	System.out.println(path);
	MultipartRequest multi = new MultipartRequest(request, path,1024*1024*5,"utf-8",new DefaultFileRenamePolicy());
	String title = multi.getParameter("title");
	String fname = multi.getFilesystemName("fileName");
	out.println("title:"+title);
	out.println("fname:"+fname);
%>
</body>
</html>