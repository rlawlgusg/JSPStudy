<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="dbconn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	
	ResultSet rs = null;
	Statement stmt = null;
	try{
		
		String sql = 
		"select id,passwd from member100 where id='"+id+"'";
		stmt = conn.createStatement();
		
		rs = stmt.executeQuery(sql);
		//사용자가 입력한 id에 해당하는 아이디와 암호가 검색
		
		if(rs.next()){
			String rId = rs.getString("id");
			//db에 실제로 존재하는 id를 저장
			
			String rPasswd = rs.getString("passwd");
			//db에 실제로 존재하는 암호를 저장
			
			//사용자가 입력한 아이디와 db의 아디가 일치하고 
			//사용자가 입력한 암호가 db의 암호와 일치하는 판별
			if(id.equals(rId) && passwd.equals(rPasswd)){
				sql = "update member100 set name='"+name+"' where id='"+id+"'";
				stmt = conn.createStatement();
				stmt.executeUpdate(sql);
				out.println("회원의 이름을 수정하였습니다.");
			}else{
				out.println("일치하는 비밀번호가 아닙니다.");
			}
		
		}else{
			out.println("일치하는 아이디가 없습니다.");
		}
	}catch(Exception e){
		out.println("수정에 실패하였습니다.");
		out.println(e.getMessage());
	}finally{
		if(rs != null){
			rs.close();
		}
		if(stmt != null){
			stmt.close();
		}
		if(conn != null){
			conn.close();
		}
	}
%>
</body>
</html>






