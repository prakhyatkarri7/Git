<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>Login</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>


<body>
	<table id="header" width="100%" cellpadding="0" cellspacing="0"
		border="1">
		<tr bgcolor="#57716e">
			<td align="center"><span id="header" style="color: white">IMS
					PROTOTYPE</span></td>
		</tr>


	</table>

	<!-- <table align="center" cellpadding="100%">
<tr>
	<p>Accessing IMS Database.....</p>
	</tr>
    <tr><a href="imspage.go">Go to Login Page</a> </tr>  
</table> -->
<form action="login" method="POST">
	<table id="footer" align="center">
		<tbody>
			<tr>
				<td colspan="2" align="center"><span style="font-size: 20px">ACCESS LOGIN </span></td>
			</tr>
			<tr>
				<td><span>User Name</span></td>
				<td><input type="text" id="userName" name="userName" ></td>
			</tr>
			<tr>
				<td><span>Password</span></td>
				<td><input type="password" id="password"  name="password"></td>
			</tr>
		</tbody>
	</table>
	<p align="center"><span>${validationMessage}</span> 
	<p align="center"></span><input align="center" type="submit" value="Login"/></p>
</form>

	<table id="footer" width="100%" cellpadding="0" cellspacing="0"
		border="1">
		<tr bgcolor="#57716e">
			<td align="center"><span id="header" style="color: white">IMS
					PROTOTYPE</span></td>
		</tr>
	</table>

</body>
</html>
