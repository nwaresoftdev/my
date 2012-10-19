<%@ include file="banner.jsp"%>
<%@ page import="java.util.*"%>
<%
	
	Enumeration en=session.getAttributeNames();
	if(en.hasMoreElements()){
		String name=session.getAttribute("user").toString();
%>
<html>
<head>
<link rel="stylesheet" href="style.css" media="screen" />
<link rel="shortcut icon" type="image/png" href="images\NACL.png">
<TITLE>Nagarjuna Agrichem Pvt Ltd</TITLE>
</head>
<body>
<!--
<h4 align="right">Welcome <%=name%>&nbsp&nbsp<a href="pwdchange.jsp">Change Password</a>&nbsp&nbsp
<a href="logout.jsp">Logout</a></h4>
</from>
<br><br>
-->
&nbsp&nbsp Congradulation ....
</body>
</html>
<%
}
else
	response.sendRedirect("login.jsp");
%>