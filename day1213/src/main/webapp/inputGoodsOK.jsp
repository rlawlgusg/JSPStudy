<%@page import="com.sist.dao.GoodsDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("euc-kr");
%>
<jsp:useBean id="g" class="com.sist.vo.GoodsVo"/>
<jsp:useBean id="dao" class="com.sist.dao.GoodsDao"></jsp:useBean>
<jsp:setProperty property="*" name="g"/>
�Է��� ��ǰ ������ ������ �����ϴ� <hr>
<%=g %>
<%
	int re = dao.insertGoods(g);
	if(re == 1){
		out.print("��ǰ�� ����Ͽ����ϴ�");	
	}else{
		out.print("��ǰ��Ͽ� �����Ͽ����ϴ�");
	}
%>
</body>
</html>