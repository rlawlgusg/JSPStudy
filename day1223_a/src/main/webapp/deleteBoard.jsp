<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>게시물 삭제</h3>
	<form action="deleteBoardOK.do" method="post">
		<input type="hidden" name="no" value="${no }">
		<input type="password" name="pwd" ><br>
		<input type="submit" value="삭제">
		<input type="reset" value="취소">
	</form>
</body>
</html>