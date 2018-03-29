<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@page language="java" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"  language="java"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Vadya</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="main.js"></script>

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

	<div class="container">
		<c:if test="${not empty order}">
			<div>
				<c:if test="${not empty thanksmsg}">
					<div class="jumbotron">
						<div class="text-center">
							<h2>${thanksmsg }</h2>
						</div>
					</div>
				</c:if>
			</div>
		
		<div class="row">
			<div class="col-xs-12">
				<div class="invoice-title">
					<h2>Invoice</h2>
					<h3 class="pull-right"></h3>
				</div>
				<hr>
				<div class="row">
					<div class="col-xs-6">
						<address>
							<strong>Billed To:</strong><br> ${user.email}<br> 
								${user.address}
							<br> 
						</address>
					</div>
					<div class="col-xs-6 text-right">
						<address>
							<strong>Shipped To:</strong><br> ${user.email}<br>
								${user.address}
							<br> 
						</address>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-6">
						<address>
							<strong>Payment Method:</strong><br> Visa ending **** 4242<br>
							${user.email }
						</address>
					</div>
					<div class="col-xs-6 text-right">
						<address>
							<strong>Order Date:</strong><br> <%= new Date() %><br>
							<br>
						</address>
					</div>
				</div>
			</div>
		</div>

			
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
							<strong>Order summary</strong>
						</h3>
					</div>
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-condensed">
								<thead>
									<tr>
										<td><strong>Item</strong></td>
										<td class="text-center"><strong>Price</strong></td>
										<td class="text-center"><strong>Quantity</strong></td>
										<td class="text-right"><strong>Totals</strong></td>
									</tr>
								</thead>
								<c:if test="${not empty cartItems}">
								
								<tbody>
								<c:forEach var="cartItem" items="${cartItems}">
									<!-- foreach ($order->lineItems as $line) or some such thing here -->
									<tr>
										<td>${cartItem.cartProductName}</td>
										<td class="text-center">&#8377;${cartItem.cartPrice }</td>
										<td class="text-center">${cartItem.cartQty }</td>
										<td class="text-right">&#8377;${cartItem.totalPrice }</td>
									</tr>
									</c:forEach>
									<tr>
										<td class="thick-line"></td>
										<td class="thick-line"></td>
										<td class="thick-line text-center"><strong>Subtotal</strong></td>
										<td class="thick-line text-right">&#8377;${finalCost}</td>
									</tr>
									<tr>
										<td class="no-line"></td>
										<td class="no-line"></td>
										<td class="no-line text-center"><strong>Shipping</strong></td>
										<td class="no-line text-right">&#8377;100</td>
									</tr>
									<tr>
										<td class="no-line"></td>
										<td class="no-line"></td>
										<td class="no-line text-center"><strong>Total</strong></td>
										<td class="no-line text-right">&#8377;${finalCost + 100 }</td>
									</tr>
									
								</tbody>
								
								</c:if>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		</c:if>
	</div>
	

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
