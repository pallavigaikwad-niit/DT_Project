<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>
<%-- <c:set var="userName" value="${pageContext.request.userPrincipal.name}"></c:set> --%>

<!DOCTYPE html>
<html>
<head>
<title>Header page</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
.dropdown{
z-index:1;
}
</style>
</head>
<nav id="navbar-red" class="navbar navbar-inverse navbar-static-top" role="navigation">
	<div class="container">
		<ul class="nav navbar-nav">
		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-demo-navbar-collapse-1">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		</ul>
	</div>
	<div class="collapse navbar-collapse" id="bs-demo-navbar-collapse-1">
	<ul class="nav navbar-nav">
		<li><a href="${contextRoot}/index"><i class="fa fa-home" style="font-size:38px;color:white"></i></a></li>		
 	<li class="dropdown">
    	<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="false">
        <i style="font-size:20px;color:white">Category</i> <b class="caret"></b>
   		</a>
		<ul class="dropdown-menu">
			<c:if test="${not empty categories}">
<%-- 				<li><a href="${contextRoot}/product/all">All Products</a></li>--%>
 					<c:forEach var="cat" items="${categories}"> 
						<li><a tabindex="-1" href="#"><i style="font-size:20px;color:black">
							<c:out value="${cat.cname }" /></i></a></li>
							<li class="divider"></li>
						<%-- <li><a href="${contextRoot}/product/${cat.cid}"></a></li> --%>
					</c:forEach>
				</c:if>
		</ul>
 		</li>
 		<li><a href="${contextRoot}/adminAdd"><i style="font-size:20px;color:white">Admin</i></a></li>
	
	</ul>
	<ul class="nav navbar-nav navbar right">
	<c:if test="${pageContext.request.userPrincipal.name==null}">
		<li><a href="${contextRoot}/signin"><i class="fa fa-sign-in" style="font-size:38px;color:white"></i></a></li>
		<li><a href="${contextRoot}/newuser"><i class="fa fa-user-plus" style="font-size:38px;color:white"></i></a></li>
 	</c:if> 
	<c:if test="${pageContext.request.userPrincipal.name!=null}">
		<li><a><i style="font-size:20px;color:white">Welcome : ${pageContext.request.userPrincipal.name}</i></a></li>
		<li><a href="${contextRoot}/logout"><i style="font-size:20px;color:white">Logout</i></a></li>
	</c:if>

	</ul> 		
	</div>
</nav>
</html>