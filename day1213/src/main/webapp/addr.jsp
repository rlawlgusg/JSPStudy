<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	�̸� : ȫ�浿
	<jsp:include page="addr.jsp">
		<jsp:param value='<%=URLEncoder.encode("����� ������ ������") %>' name="data"/>
	</jsp:include>
</body>
</html>