<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
		<li><a href="/Vadya/index"><i class="fa fa-home" style="font-size:38px;color:white"></i></a></li>
		<li><a href="/Vadya/signin"><i class="fa fa-sign-in" style="font-size:38px;color:white"></i></a></li>
		<li><a href="/Vadya/newuser"><i class="fa fa-user-plus" style="font-size:38px;color:white"></i></a></li>
	
 	<li class="dropdown">
    	<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="false">
        <i style="font-size:20px;color:white">Category</i> <b class="caret"></b>
   		</a>
	    <ul class="dropdown-menu">
	        <li><a tabindex="-1" href="#"><i style="font-size:20px;color:black">Piano</i></a></li>
	        <li class="divider"></li>
	        <li><a tabindex="-1" href="#"><i style="font-size:20px;color:black">Guitar</i></a></li>
	        <li class="divider"></li>
	        <li><a tabindex="-1" href="#"><i style="font-size:20px;color:black">Violin</i></a></li>
	    </ul>
		</li>
		<li><a href="/Vadya/admin"><i style="font-size:20px;color:white">Admin</i></a></li>

	</ul>		
	</div>
</nav>
</html>