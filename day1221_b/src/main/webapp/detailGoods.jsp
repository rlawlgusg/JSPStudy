<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>상품상세</h2>
	<hr>
	상품번호 : ${b.no} <br>
	상품명 : ${b.name } <br>
	상품가격 : ${b.price } <br>
	상품수량 : ${b.qty } <br>
	
	 <br>
	<img src="upload/${b.fname }" width="200" height="200">
	 
</body>
</html>