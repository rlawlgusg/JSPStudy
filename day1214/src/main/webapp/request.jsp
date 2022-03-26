<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	POST 방식 <br>
	<form action="process.jsp" method="post">
		이름 : <input type="text" name="name">
		<input type="submit" value="전송">
	</form>
	<hr>
	GET 방식 <br>	
	<form action="process.jsp">
		이름 : <input type="text" name="name">
		<input type="submit" value="전송">
	</form>
	<hr>
	<a href="process.jsp?name=홍길동">연결</a>
</body>
</html>