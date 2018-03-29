<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Vadya</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
					<div class="table-responsive">
						<table id="mytable" class="table table-bordred table-striped">
							<thead>
								<tr>
									<!-- <th><input type="checkbox" id="checkall" /></th> -->
									<c:if test="${pageContext.request.userPrincipal.name=='pallavi@niit.com'}">
									<th>ID</th>
									</c:if>
									<th>Name</th>
									<th>Price</th>
									<th>Description</th>
									<th>Stock</th>
									<th>Category</th>
									<th>Supplier</th>
									<th>Image</th>
									<c:if test="${pageContext.request.userPrincipal.name=='pallavi@niit.com'}">
									<th>Edit</th>
									<th>Delete</th>
									</c:if>
								</tr>
							</thead>
							<tbody>
							<c:if test="${not empty products}">
								<c:forEach var="prod" items="${products}"> 
								<tr>
									<!-- <td><input type="checkbox" class="checkthis" /></td> -->
									<c:if test="${pageContext.request.userPrincipal.name=='pallavi@niit.com'}">
									<td>${prod.pid}</td>
									</c:if>
									<td><a href="${contextRoot}/ProductList/productById/${prod.pid}">${prod.productName}</a></td>
									<td>${prod.price}</td>
									<td>${prod.productDescription}</td>
									<td>${prod.stock}</td>
									<td>${prod.category.cname}</td>
									<td>${prod.supplier.supplierName}</td>
									<td>
										<img src="${contextRoot}/resources/${prod.imageName}"
										width="40" height="40"></img>
									</td>
									<c:if test="${pageContext.request.userPrincipal.name=='pallavi@niit.com'}">
									
									<td>
										<p data-placement="top" data-toggle="tooltip" title="Edit">
												<a href="${contextRoot}/adminAdd/editProduct/${prod.pid}">
													<button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" >
														<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</a>
										</p>
									</td>
									<td>
										<p data-placement="top" data-toggle="tooltip" title="Delete">
											<a href="${contextRoot}/adminAdd/deleteProduct/${prod.pid}">
												<button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" >
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</a>
										</p>
									</td>
									</c:if>
								</tr>
								</c:forEach>
							</c:if>
							</tbody>
						</table>            
					</div>
			</div>
		</div>
	</div>
</body>

	<jsp:include page="footer.jsp"></jsp:include>
</html>