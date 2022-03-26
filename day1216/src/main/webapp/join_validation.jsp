<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function checkMember() {
		var regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		var regExpName = /^[가-힣]*$/;
		var regExpPasswd = /^[0-9]*$/;
		var regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/;
		var regExpEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		var id = document.Member.id.value;
		var passwd = document.Member.passwd.value;
		var name = document.Member.name.value;
		var phone = document.Member.phone1.value + "-" +
					document.Member.phone2.value + "-" +		 	
					document.Member.phone3.value;
		var email = document.Member.email.value;
		
		if(!regExpId.test(id)){
			alert("아이디는 문자로 시작해주세요!");
			document.Member.id.focus();
			return false;
		}
		if(!regExpName.test(name)){
			alert("이름은 한글만 입력해주세요!");
			document.Member.name.focus();
			return false;
		}
		if(!regExpPasswd.test(passwd)){
			alert("비밀번호는 숫자만 입력해주세요!");
			document.Member.passwd.focus();
			return false;
		}
		if(!regExpPhone.test(phone)){
			alert("전화번호 형식에 맞지 않습니다");
			document.Member.phone.focus();
			return false;
		}
		if(!regExpEmail.test(email)){
			alert("이메일 형식에 맞지 않습니다");
			document.Member.email.focus();
			return false;
		}
		
		
		document.Member.submit();
		
	}
	
</script>
</head>
<body>
	<h2>회원 가입</h2>
	<form action="join_validation_process.jsp" name="Member" method="post">
		아이디 : <input type="text" name="id"> <br>
		비밀번호 : <input type="password" name="passwd"> <br>
		이름 : <input type="text" name="name"> <br>
		연락처 : <input type="text" name="phone1"> 
				- 
				<input type="text" name="phone2"> 
				- 
				<input type="text" name="phone3"> <br>
		이메일 : <input type="text" name="email"> <br>
		<input type="button" value="가입하기" onclick="checkMember()">
	</form>
</body>
</html>