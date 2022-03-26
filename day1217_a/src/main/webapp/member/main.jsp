<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../header.jsp"/>
	<%
		if(session.getAttribute("member") == null){
			response.sendRedirect("login.jsp");
		}
	%>
	<h2>로그인 되었습니다.</h2>
	<a href="list.jsp">게시물목록</a> <br>
	<a href="insert.jsp">게시물등록</a> <br>
	<a href="update.jsp">게시물수정</a> <br>
	<a href="delete.jsp">게시물삭제</a> <br>
	<a href="listGoods.jsp">상품목록</a> <br>
</body>
</html>