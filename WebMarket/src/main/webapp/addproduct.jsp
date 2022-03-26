<%@page import="com.sist.vo.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
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
  
  <script type="text/javascript" src="resources/js/validation.js"></script>

</head>
<body>
	
	
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 등록</h1>
		</div>
	</div>
	
	<div class="container">
		<form action="processAddProduct.jsp" method="post"
				name="newProduct" class="form-horizontal"
				enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">상품 코드</label>
				<div class="col-sm-3">
					<input type="text" id="productId" name="productId"
						class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상품명</label>
				<div class="col-sm-3">
					<input type="text" name="name"
						id="name"
						class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">가격</label>
				<div class="col-sm-3">
					<input type="text" name="unitPrice"
						id="unitPrice"
						class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상세 정보</label>
				<div class="col-sm-3">
					<textarea rows="2" cols="50"
						class="form-control"
						id="description"
						name="description"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">제조사</label>
				<div class="col-sm-3">
					<input type="text" id="manufacturer" name="manufacturer"
						class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">분류</label>
				<div class="col-sm-3">
					<input type="text" id="category" name="category"
						class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">재고 수량</label>
				<div class="col-sm-3">
					<input type="text" id="unitsInStock" name="unitsInStock"
						class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상태</label>
				<div class="col-sm-3">
					<input type="radio"
						id="condition" 
						name="condition"
						value="New">신규 제품
					<input type="radio" 
						id="condition"
						name="condition"
						value="Old">중고 제품
					<input type="radio" 
						id="condition"
						name="condition"
						value="Refurbished">재생 제품						
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">이미지</label>
				<div class="col-sm-3">
					<input type="file" name="productImage"
						class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<input type="button" class="btn btn-primary"	
					value="등록"
					onclick="checkAddProduct()">
			</div>
			
		</form>
	</div>
	
	<jsp:include page="footer.jsp"/>
	
</body>
</html>
