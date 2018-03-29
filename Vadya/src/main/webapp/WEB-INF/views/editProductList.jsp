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
<jsp:include page="header.jsp"></jsp:include>

<body>
		<c:if test="${'Manage Product'}">
		<h3>${msg}</h3>
		</c:if>
 
<!--  <ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#supplier">Supplier</a></li>
			<li><a data-toggle="tab" href="#category">Category</a></li>
			<li><a data-toggle="tab" href="#product">Product</a></li>
		</ul>
 -->
<div class="container">
			<div id="product" class="tab-pane fade in active">
				<form action="${contextRoot}/adminAdd/updateProduct" method="POST" enctype="multipart/form-data" >
					<div class="form-group">
						<label for="pName" >Product Name</label> 
						<input type="text" value="${product.productName }" class="form-control" id="pName" placeholder="Enter Product Name"
							name="pName"></input>
					</div>
					<div class="form-group">
						<label for="pDesc" >Product Description</label>
						<input type="text" value="${product.productDescription }" class="form-control" name="pDesc" id="pDesc"/>
					</div>
					<div class="form-group">
						<label for="pPrice">Price</label> 
						<input type="text" value="${product.price }" class="form-control" id="pPrice"
							placeholder="Enter Product Price" name="pPrice"/>
					</div>
					<div class="form-group">
						<label for="pStock">Stock</label> 
						<input type="text"  value="${product.stock }" class="form-control" 
						id="pStock" placeholder="Enter Stock" name="pStock"/>
					</div>
					<div class="form-group">
						<label for="cid">Category ID</label> 
						<select class="form-control" 
							name="category">
							<option value="${product.category.cid}">${product.category.cname}</option>
 								<c:forEach items="${categories}" var="cat">
							<option value="${cat.cid}">${cat.cname}</option>
							<c:out value="${cat.cname }"></c:out>
						</c:forEach>	
						</select>
					</div>
					<div class="form-group">
						<label for="sid">Supplier ID</label> 
						<select class="form-control"
							name="supplier">
							<option value="${product.supplier.sid}">${product.supplier.supplierName}</option>
						<c:forEach items="${suppliers}" var="sup">
							<option value="${sup.sid}">${sup.supplierName}</option>
						</c:forEach>
						</select>	
					</div>
					<div class="form-group">
						<label for="file" >Select Product Image</label> 
						<input type="file" class="form-control-file" id="pimage" name="pimage"></input>
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
			</div>
		</div>
	<br>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>
