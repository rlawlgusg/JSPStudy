<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
	Connection conn = null;
	try{
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String user = "c##madang";
		String password = "madang";
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(url, user, password);
		out.println("데이터베이스 연결이 성공했습니다.");
	}catch(Exception e){
		out.println("데이터베이스 연결이 실패했습니다.");
		out.println(e.getMessage());
	}finally{
		if(conn != null){
			conn.close();
		}
	}

%>
</body>
</html>