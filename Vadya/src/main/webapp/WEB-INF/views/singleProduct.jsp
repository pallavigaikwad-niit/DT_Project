<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	isELIgnored="false" autoFlush="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Vadya</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="container">
		<br/>
		<c:if test="${not empty product}">
			<div class="row">
					<div class="col-xs-12 col-sm-4">
						<img alt="${product.productName}" class="img-responsive"
							src="${contextRoot}/resources/${product.imageName}">
					</div>
					<div class="col-xs-12 col-sm-6">
						<strong>Product Name:</strong> ${product.productName }
						<br /> 
						
						<strong>Description:</strong> ${product.productDescription } 
						<br /> 
						
						<strong>Stock Available:</strong> ${product.stock } 
						<br /> 
						
						
						 <strong>Price:</strong> ${product.price }
						 <br />
						 
						 <strong>Select Quantity</strong> 
						 
						 <%-- <span>
						 <input type="hidden" name="pid" value="{product.pid}" />
							<a href="${contextRoot}/product/all">
							<span class="btn btn-warning"> Continue Shopping</span></a>
							<a href="${contextRoot}/cart/addToCart/${product.pid}">
							<span class="btn btn-success">Add to Cart</span></a>
						</span> --%>
						
							<form action="${contextRoot}/cart/addToCart" method="post"> 
								<input type="hidden" name="pid" value="${product.pid}" />
								<input type="number" min="1" max="${product.stock}" id="qty" name="qty" name="countQty" value="1"> 
								<br/>
								<br/>
								<input type="submit" class="btn btn-primary" value="Add to Cart" name="addtocart"/>
							</form>
							<br/>
							<a href="${contextRoot}/ProductList/all">
							<span class="btn btn-warning"> Continue Shopping</span></a>
					</div>
			</div>
		</c:if>
	</div>
	<br/>
	<br/>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
