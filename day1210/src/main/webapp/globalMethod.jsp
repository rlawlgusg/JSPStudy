<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
Page Count is;
<%!
	public int myMethod(int count){
		return ++count;
}
%>
<%
	out.print(myMethod(0));
%>
<hr>
<%=myMethod(100)%>
</body>
</html>