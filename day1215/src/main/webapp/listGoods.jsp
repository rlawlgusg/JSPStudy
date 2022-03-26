<%@page import="java.util.ArrayList"%>
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

<h2>상품목록</h2>
<hr>
<a href="insertGoods.jsp">상품등록</a>
<table>
	<tr>
		<td>상품번호</td>
		<td>상품이름</td>
	</tr>

<%
request.setCharacterEncoding("utf-8");
GoodsDAO dao = GoodsDAO.getInstance();
ArrayList<GoodsVO> list = dao.listAll();
for(GoodsVO g:list){
%>
	<tr>
		<td><%=g.getNo() %></td>
		<td><a href="detailGoods.jsp?no=<%=g.getNo()%>"><%=g.getName() %></a></td>
	</tr>
<% 
}
%>
</table>
	
</body>
</html>