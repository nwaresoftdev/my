<!--<%@ include file="banner.jsp"%> -->
<%@ include file="removecache.jsp"%>
<%@ page import="java.sql.*" %>
<!--<%@ page language="java" import="java.util.*,control.Controls,connection.ConnectionImp"%>-->
<%
	String name=request.getParameter("uname");
	String pwd=request.getParameter("pwd");
	String type="admin";
	
	//Controls c=new Controls();
	//Boolean flag=c.validation(name,pwd,true);
	//if(flag)
	//{
	//	session.setAttribute("user",name);
	//	session.setAttribute("password",pwd);
	//	response.sendRedirect("index.jsp");
	//}
	//else
//	{
	
  if(name.equals("ratna") && pwd.equals("ratna"))
  {
      session.setAttribute("user",name);
   out.println("<script>parent.location.href='link2.html'</script>");

	} else 
	   { %>
	<head>
<link rel="shortcut icon" type="image/png" href="images\NACL.png">
<link rel="stylesheet" href="style.css" media="screen" />
</head>
<TITLE>Blood Donor Portal</TITLE>
<body>
<br><br><br>
	<center>
		<font color='red' font='arial' size='4'>
			Sorry, Username and Password are Invalid.<br><br>
			<a href='adminlogin.jsp'>ReLogin</a>
		</font>
	</center>
</body>
<% }
%>
	