<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<title>Login</title>
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
  		<form action="/signin" method="post">
    		<div class="form-group">
      			<label for="email">Email:</label>
      			<input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    		</div>
    		<div class="form-group">
      			<label for="pwd">Password:</label>
      			<input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
    		</div>
    		<div class="checkbox">
      			<label><input type="checkbox" name="remember"> Remember me</label>
    		</div>
    		<button type="submit" class="btn btn-default">Submit</button>
  		</form>
	</div>

<jsp:include page="footer.jsp"></jsp:include>
</html>
