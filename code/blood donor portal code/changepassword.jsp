<%@ include file="banner.jsp"%>
<%@ include file="removecache.jsp"%>
<%@ page language="java" import="java.util.*,control.Controls,connection.ConnectionImp"%>
<link rel="stylesheet" href="style.css" media="screen" />
<%	
	Enumeration enf=session.getAttributeNames();
	if(enf.hasMoreElements())
	{
		String current_password=(String)request.getParameter("current");
		String new_password=(String)request.getParameter("newp");
		String confirm_password=(String)request.getParameter("confirm");
		String pwd=session.getAttribute("password").toString();
		if(current_password.equals(pwd))
		{
			Controls c=new Controls();
			String username=session.getAttribute("user").toString();
			Boolean flag=c.changePassword(username,current_password,new_password);
			if(flag)
			{
				session.setAttribute("password",new_password);
				response.sendRedirect("Home.jsp");
			}
			else
			{
%>
	<head><link rel="shortcut icon" type="image/png" href="images\NACL.png">
	</head>
	<TITLE>Nagarjuna Agrichem Pvt Ltd</TITLE>
	<body>
	<br><br><br>
		<center>
			<font color='blue' font='arial' size='4'>
				Sorry, Session timed out. Goto previous
				<a href='pwdchange.jsp'>click here...</a>
			</font>
		</center>
<%
			}
		}
		else
		{
%>
		<br><br><br>
		<center>
			<font color='blue' font='arial' size='4'>
				Sorry your current password is invalid
				<a href='pwdchange.jsp'>click here...</a>
			</font>
		</center>
	</body>
<%
		}
	}
	else
	{
		response.sendRedirect("login.jsp");
	}
%>
	