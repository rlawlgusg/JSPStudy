<%@page import="com.sist.vo.GoodsVO"%>
<%@page import="com.sist.dao.GoodsDAO"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
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
	request.setCharacterEncoding("utf-8");
	String path = request.getRealPath("goods");
	System.out.println(path);
	MultipartRequest multi = new MultipartRequest(request,path,1024*1024*5,"utf-8",new DefaultFileRenamePolicy());

	GoodsVO g = new GoodsVO();
	g.setNo(Integer.parseInt(multi.getParameter("no")));
	g.setName(multi.getParameter("name"));
	g.setPrice(Integer.parseInt(multi.getParameter("price")));
	g.setQty(Integer.parseInt(multi.getParameter("qty")));
	g.setFname(multi.getFilesystemName("fname"));
	GoodsDAO dao = GoodsDAO.getInstance();
	int re = dao.insert(g);
	if(re == 1){
		response.sendRedirect("listGoods.jsp");
	}else{
		out.print("상품 등록 실패");
	}
%>


</body>
</html>