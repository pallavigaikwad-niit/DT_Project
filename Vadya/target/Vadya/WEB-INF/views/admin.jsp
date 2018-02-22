<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@page language="java" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"  language="java"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="main.js"></script>
<style type="text/css">
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
 <div class="container">
 
		<c:if test="${not empty msg }">
			<h3>${msg} </h3>
		</c:if>
 
 <ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#supplier">Supplier</a></li>
			<li><a data-toggle="tab" href="#category">Category</a></li>
			<li><a data-toggle="tab" href="#product">Product</a></li>
		</ul>

<!-- Supplier Tab -->
		<div class="tab-content">
			<div id="supplier" class="tab-pane fade in active">
			<!--    -->
				<form action="/Vadya/saveSupplier" method="post" >
				
						<div class="form-group">
						<label for="sid">Supplier ID</label> 
						<input type="text" class="form-control" id="sid" 
						placeholder="Enter Supplier ID"	name="sid" />
					</div>
					<div class="form-group">
						<label for="supplierName">Supplier Name</label>
						<input type="text" class="form-control" id="supplierName"
							placeholder="Enter Supplier Name" name="supplierName" />
					</div> 
					
					<button type="submit" class="btn btn-default">Submit</button>
			
				</form>
			</div>

<!-- Category Tab -->
			<div id="category" class="tab-pane fade">
				<form action="/Vadya/saveCategory" method="POST">
					<div class="form-group">
						<label for="cid">Category ID</label> 
						<input type="text" class="form-control" id="cid" 
						placeholder="Enter Category ID"	name="cid" />
					</div>
					<div class="form-group">
						<label for="cname"> Category Name</label>
						 <input type="text"	class="form-control" id="cname" 
						 placeholder="Enter Category Name" name="cname" />
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
			</div>
			

			<!-- Product Tab -->
			<div id="product" class="tab-pane fade">
				<form action="/Vadya/saveProduct" method="POST" enctype="multipart/form-data" >
					<div class="form-group">
						<label for="pName" ></label>Product Name</label> 
						<input type="text" class="form-control" id="pName" placeholder="Enter Product Name"
							name="pName"></input>
					</div>
					<div class="form-group">
						<label for="pDesc" >Product Description</label>
						<textarea class="form-control" name="pDesc" id="pDesc" rows="3"></textarea>
					</div>
					<div class="form-group">
						<label for="pPrice">Price</label> 
						<input type="text" class="form-control" id="pPrice"
							placeholder="Enter Product Price" name="pPrice"/>
					</div>

					<div class="form-group">
						<label for="pStock">Stock</label> 
						<input type="text"  class="form-control" 
						id="pStock" placeholder="Enter Stock" name="pStock"/>
					</div>

					<div class="form-group">
						<label for="cid">Category ID</label> 
						<select class="form-control" 
							name="category">
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

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>