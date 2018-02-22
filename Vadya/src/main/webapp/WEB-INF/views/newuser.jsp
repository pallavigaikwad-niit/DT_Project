<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head><meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

		<title>New User</title>
		<style type="text/css">
		form{
			height:400px;
			width:80%;
		}
		</style>
		</head>	
	<jsp:include page="header.jsp"></jsp:include>

<div class="container">
	<FORM METHOD="POST" ACTION="/Vadya/insertUser">
		<TABLE BORDER="1">
		  <TR>
		    <TD>Email Address </TD>
		    <TD>
		      <INPUT TYPE="TEXT" NAME="email" SIZE="20">
		    </TD>
		  </TR>
		  <TR>
		    <TD>Password </TD>
		    <TD><INPUT TYPE="Password" NAME="password" SIZE="25"></TD>
		  </TR>
		  <TR>
		    <TD>Address </TD>
		    <TD><INPUT TYPE="text" NAME="address" SIZE="25"></TD>
		  </TR>
		  <TR>
		    <TD>Contact Number</TD>
		    <TD><INPUT TYPE="text" NAME="phone" SIZE="25"></TD>
		  </TR>
		  <TR>
		  	<TD><INPUT TYPE="SUBMIT" VALUE="Submit" NAME="submitButton"></TD>
		  	<TD><INPUT TYPE="reset" VALUE="Clear" NAME="resetButton"></TD>
		  </TR>
		</TABLE>
	</FORM>
</div>
	<jsp:include page="footer.jsp"></jsp:include>
			
</html>