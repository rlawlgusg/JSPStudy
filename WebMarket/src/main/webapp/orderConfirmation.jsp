<%@page import="com.sist.vo.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
 <style type="text/css">
 	.box{
 		text-align: center;
 	}
 </style>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>
<%
	Cookie []cookies = request.getCookies();
	String cartId = session.getId();
	String shipping_cartId = "";
	String shipping_name = "";
	String shipping_shippingDate = "";
	String shipping_country = "";
	String shipping_zipCode = "";
	String shipping_addressName = "";
	
	if(cookies != null){
		for(Cookie cookie:cookies){
			String n = cookie.getName();
			String value = URLDecoder.decode(cookie.getValue(),"utf-8");
			if(n.equals("Shipping_CartId")){
				shipping_cartId=value;
			}
			if(n.equals("name")){
				shipping_name=value;
			}
			if(n.equals("shippingDate")){
				shipping_shippingDate=value;
			}
			if(n.equals("country")){
				shipping_country=value;
			}
			if(n.equals("zipCode")){
				shipping_zipCode=value;
			}
			if(n.equals("addressName")){
				shipping_addressName=value;
			}
		}
	}
	
%>

<%@ include file="menu.jsp" %>
	
	<div class="jumbotron box">
		<h1>주문정보</h1>
	</div>
	
	<div class="container alert alert_info">
		<div class="text-center">
			<h1>영수증</h1>
		</div>
		<div class="row justify-content-between">
			<div class="col-4" align="left">
				<strong>배송 주소</strong> <br>
				성명 : <%=shipping_name %> <br>
				우편번호 : <%=shipping_zipCode %> <br>
				주소 : <%=shipping_addressName %>(<%=shipping_country %>) <br>
			</div>
			<div class="col-4" align="right">
				<p><em>배송일 : <%=shipping_shippingDate %></em></p>
			</div>
		</div>
	</div>
	<div>
		<table class="table tbale-hover">
			<tr>
				<th class="text-center">상품명</th>
				<th class="text-center">수량</th>
				<th class="text-center">가격</th>
				<th class="text-center">소계</th>
			</tr>
			
			<%
				int sum = 0;
				ArrayList<Product> cartList = (ArrayList<Product>)session.getAttribute("cartlist");
			
				if(cartList == null){
					cartList = new ArrayList<Product>();
				}
				
				for(Product product:cartList){
					int total = (int)product.getUnitPrice()*product.getQuantity();
					sum += total;
					%>
					<tr>
						<td class="text-center"><em><%=product.getPname() %></em></td>
						<td class="text-center"><em><%=product.getQuantity() %></em></td>
						<td class="text-center"><em><%=product.getUnitPrice() %></em></td>
						<td class="text-center"><em><%=total %></em></td>
					</tr>
					<% 
				}
				
			%>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td class="text-right"><strong>총액</strong></td>
				<td class="text-center"><strong><%=sum %></strong></td>
			</tr>
		</table>
		
		<a class="btn btn-secondary" role="button" href="./shippingInfo.jsp?cartId=<%=shipping_cartId%>">이전</a>
		<a class="btn btn-success" role="button" href="./thankCustomer.jsp">주문완료</a>
		<a class="btn btn-secondary" role="button" href="./checkOutCancelled.jsp">취소</a>
		
	</div>
	
	
	<%@ include file="footer.jsp" %>
</body>
</html>