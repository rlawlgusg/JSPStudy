<%@page import="com.sist.vo.GoodsVO"%>
<%@page import="java.util.ArrayList"%>
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
	
<h2>상품 상세</h2>
상품번호 : <%= g.getNo() %> <br>
상품이름 : <%= g.getName() %> <br>
상품가격 : <%= g.getPrice()%> <br>
상품수량 : <%=g.getQty() %> <br>
<img src="goods/<%=g.getFname()%>" width="50" height="50">
<hr>
<a href="updateGoods.jsp?no=<%=g.getNo()%>">수정</a>			
<a href="deleteGoods.jsp?no=<%=g.getNo()%>">삭제</a>			
				
</body>
</html>