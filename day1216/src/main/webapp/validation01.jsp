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
		if(id.length < 4 || id.length >12){
			alert("아이디는 4~12자 이내로 입력가능합니다.");
			document.loginForm.id.select();
			return false;
		}
		if(passwd.length < 4){
			alert("비밀번호는 4자 이상으로 입력해야 합니다");
			document.loginForm.passwd.select();
			return false;
		}
		document.loginForm.submit();
	}
</script>
</head>
<body>
	<form action="validation01_process.jsp" name="loginForm">
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="password" name="passwd"></p>
		<p><input type="button" value="전송" onclick="checkForm()"></p>
	</form>
</body>
</html>