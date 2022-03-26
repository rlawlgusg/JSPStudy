<%@page import="java.io.File"%>
<%@page import="com.sist.dao.GoodsDAO"%>
<%@page import="com.sist.vo.GoodsVO"%>
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
GoodsVO g = new GoodsVO();
GoodsDAO dao = GoodsDAO.getInstance();
int no = Integer.parseInt(request.getParameter("no"));
String oldFname = dao.getGoods(no).getFname();
String path = request.getRealPath("goods");
int re = dao.delete(no);
if(re == 1){
		File file = new File(path+"/"+oldFname);
		file.delete();
	response.sendRedirect("listGoods.jsp");
}else{
	out.print("상품 삭제 실패");
}
%>
</body>
</html>