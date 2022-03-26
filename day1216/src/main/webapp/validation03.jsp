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
		
		for(i=0;i<id.length;i++){
			var ch = id.charAt(i);
			if(ch<'a'||ch>'z'){
				alert("아이디는 영문 소문자만 입력 가능합니다");
				document.loginForm.id.select();
				return false;
			}
		}
		if(isNan(passwd)){
			alert("비밀번호는 숫자만 입력 가능합니다");
			document.loginForm.passwd.select();
			return false;
		}
		
		document.loginForm.submit();
	}
</script>
</head>
<body>
	<form action="validation03_process.jsp" name="loginForm">
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="password" name="passwd"></p>
		<p><input type="button" value="전송" onclick="checkForm()"></p>
	</form>
</body>
</html>