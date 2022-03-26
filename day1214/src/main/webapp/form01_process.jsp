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
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String sex = request.getParameter("sex");
	String []hobby = request.getParameterValues("hobby");
	String city = request.getParameter("city");
	String comment = request.getParameter("comment");
%>

입력정보는 다음과 같습니다. <hr>
아이디 : <%=id%> <br>
비밀번호 : <%=passwd%> <br>
이름 : <%=name%> <br>
전화 : <%=phone1%> - <%=phone2%> - <%=phone3%> <br>
성별 : <%=sex%> <br>
취미 : 
<% 
	if(hobby != null){
		for(String h:hobby){
			out.print(h+" ");	
		}
	}
%> 
<br>
지역 : <%=city%> <br>
가입인사 : <%=comment%>

</body>
</html>