<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<style type="text/css">
		form{
			height:400px;
			width:100%;
		}
		</style>
		
</head>
<jsp:include page="header.jsp"></jsp:include>

<FORM METHOD="POST" ACTION="">
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
	  	<TD><INPUT TYPE="SUBMIT" VALUE="Login" NAME="submitButton"></TD>
	  </TR>
	</TABLE>
</FORM>		
	<jsp:include page="footer.jsp"></jsp:include>
</html>
