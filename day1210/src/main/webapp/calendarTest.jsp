<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	table, td{
		border: 1px solid black;
	}
	table{
		border-collapse: collapse;
		width: 60%;
	}
	.title{
		background-color: black;
		color: white;
	}
	
</style>
</head>
<body>
<% 
	int []lastDate = {31,28,31,30,31,30,31,31,30,31,30,31};
	String []days = {"일","월","화","수","목","금","토"};
	Date today = new Date();
	
	int year = today.getYear();
	int month = today.getMonth();
	
	if(request.getParameter("month")!= null){
		year = Integer.parseInt(request.getParameter("year"));
		month = Integer.parseInt(request.getParameter("month"));
		if(month ==12){
			year++;
			month = 0;
		}
		if(month ==-1){
			year--;
			month = 11;
		}
	}
	
	
	Date startDate = new Date(year,month,1);
	int startDay = startDate.getDay();
%>
마지막 날짜 <%=lastDate[month] %>
<h2><%=year+1900%>년 <%=month+1%>월 </h2>
<table>
<tr class="title">
<%
	//days배열의 요소만큼 td를 동적으로 만듬
	for(String s:days){
		%>
		<td><%=s%></td>
		<% 
	}
%>
</tr>
<tr>
<%
	for(int i=1;i<=startDay;i++){
		%>
		<td>&nbsp;</td>
		<% 
	}

	for(int i=1;i<=lastDate[month];i++){
		%>
		<td><%=i %></td>
		<% 	
		if((i+startDay)%7==0){
			%>
			</tr>
			<tr>
			<% 
		}
	}
%>
</tr>
</table>
<hr>
<a href="calendarTest.jsp?year=<%=year%>&month=<%=month-1%>">이전달</a>
&nbsp;&nbsp;&nbsp;&nbsp;
<a href="calendarTest.jsp?year=<%=year%>&month=<%=month+1%>">다음달</a>
</body>
</html>