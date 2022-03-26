<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function checkForm() {
		var id = document.loginForm.id.value;
		var passwd = document.loginForm.passwd.value;
		alert("아이디:"+id+"\n"+"비밀번호:"+passwd);
	}
</script>
</head>
<body>
	<form action="#" name="loginForm">
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="password" name="passwd"></p>
		<p><input type="submit" value="전송" onclick="checkForm()"></p>
	</form>
</body>
</html>