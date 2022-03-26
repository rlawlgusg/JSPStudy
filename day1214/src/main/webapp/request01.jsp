<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="request01_process.jsp" method="post">
		<p>아이디 : <input type="text" name="id"> </p>
		<p>비밀번호 : <input type="password" name="passwd"> </p>
		<p>취미 :
			<input type="checkbox" name="hobby" value="수영">수영
			<input type="checkbox" name="hobby" value="달리기">달리기
			<input type="checkbox" name="hobby" value="게임">게임
			<input type="checkbox" name="hobby" value="독서">독서
			<input type="checkbox" name="hobby" value="음악감상">음악감상
		</p>
		<p><input type="submit" value="전송"> </p>
	</form>
</body>
</html>