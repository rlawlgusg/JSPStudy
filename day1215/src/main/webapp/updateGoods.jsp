<%@page import="com.sist.vo.GoodsVO"%>
<%@page import="com.sist.dao.GoodsDAO"%>
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
	int no = Integer.parseInt(request.getParameter("no"));
	GoodsDAO dao = GoodsDAO.getInstance();
	GoodsVO g = dao.getGoods(no);
%>
<h2>상품 수정</h2>
<hr>
<form action="updateGoodsOK.jsp" method="post" enctype="multipart/form-data">
	<input type="hidden" name="no" value="<%=g.getNo()%>"> <br>
	상품이름 : <input type="text" name="name" value="<%=g.getName()%>"> <br>
	상품가격 : <input type="text" name="price" value="<%=g.getPrice()%>"><br>
	상품수량 : <input type="text" name="qty" value="<%=g.getQty()%>"><br>
	<img src="goods/<%=g.getFname()%>" width="30" height="30"> <br>
	<input type="hidden" name="fname" value="<%=g.getFname()%>">
	상품이미지 : <input type="file" name="uploadfile"><br>
	<input type="submit" value="수정">
</form>
</body>
</html>