<%@page import="java.io.File"%>
<%@page import="com.sist.dao.GoodsDAO"%>
<%@page import="com.sist.vo.GoodsVO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
	String path = request.getRealPath("goods");
	request.setCharacterEncoding("utf-8");
	MultipartRequest multi = new MultipartRequest(request,path,1024*1024*5,"utf-8",new DefaultFileRenamePolicy());
	
	GoodsVO g = new GoodsVO();
	String oldFname = multi.getParameter("fname");
	g.setNo(Integer.parseInt(multi.getParameter("no")));
	g.setName(multi.getParameter("name"));
	g.setPrice(Integer.parseInt(multi.getParameter("price")));
	g.setQty(Integer.parseInt(multi.getParameter("qty")));
	g.setFname(oldFname);
	String fname = multi.getFilesystemName("uploadfile");
	if(fname != null && !fname.equals("")){
		g.setFname(fname);
	}
	
	GoodsDAO dao = GoodsDAO.getInstance();
	int re = dao.update(g);
	if(re == 1){
		if(fname != null && !fname.equals("")){
			File file = new File(path+"/"+oldFname);
			file.delete();
		}
		response.sendRedirect("listGoods.jsp");
	}else{
		out.print("상품 수정 실패");
	}
%>
</body>
</html>