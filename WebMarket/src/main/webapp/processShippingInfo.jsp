<%@page import="java.net.URLEncoder"%>
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
	Cookie cartId = new Cookie("Shipping_CartId", URLEncoder.encode(request.getParameter("cartId"),"utf-8"));
	
	request.setCharacterEncoding("utf-8");
	Cookie name = new Cookie("name", URLEncoder.encode(request.getParameter("name"),"utf-8"));
	
	request.setCharacterEncoding("utf-8");
	Cookie shippingDate = new Cookie("shippingDate", URLEncoder.encode(request.getParameter("shippingDate"),"utf-8"));
	
	request.setCharacterEncoding("utf-8");
	Cookie country = new Cookie("country", URLEncoder.encode(request.getParameter("country"),"utf-8"));
	
	request.setCharacterEncoding("utf-8");
	Cookie zipCode = new Cookie("zipCode", URLEncoder.encode(request.getParameter("zipCode"),"utf-8"));
	
	request.setCharacterEncoding("utf-8");
	Cookie addressName = new Cookie("addressName", URLEncoder.encode(request.getParameter("addressName"),"utf-8"));

	cartId.setMaxAge(60*60*24);
	name.setMaxAge(60*60*24);
	shippingDate.setMaxAge(60*60*24);
	zipCode.setMaxAge(60*60*24);
	country.setMaxAge(60*60*24);
	addressName.setMaxAge(60*60*24);
	
	
	response.addCookie(cartId);
	response.addCookie(name);
	response.addCookie(shippingDate);
	response.addCookie(country);
	response.addCookie(zipCode);
	response.addCookie(addressName);
	
	response.sendRedirect("orderConfirmation.jsp");
%>
</body>
</html>