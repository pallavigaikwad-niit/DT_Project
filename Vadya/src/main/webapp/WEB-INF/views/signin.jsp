<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Vadya</title>
<style type="text/css">
		form{
			height:400px;
			width:80%;
		}
		</style>
</head>
<jsp:include page="header.jsp"></jsp:include>

<div class="container">
	<h2>Login</h2>
  		<form id="login-form" action="${contextRoot}/login" method="post">
    		<div class="form-group">
      			<label for="email">Email:</label>
      			<input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    		</div>
    		<div class="form-group">
      			<label for="pwd">Password:</label>
      			<input type="password" class="form-control" id="password" placeholder="Enter password" name="password">
    		</div>
    		<div class="form-group">
    			<button type="submit" class="btn btn-default">Submit</button>
				<button type="reset" class="btn btn-default">Clear</button>
    		</div>
  		</form>
	</div>
<br>
<jsp:include page="footer.jsp"></jsp:include>
</html>
