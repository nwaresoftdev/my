<%@ include file="banner.jsp"%>
<%@ include file="removecache.jsp"%>
<%@ page language="java" import="java.util.*,control.Controls,connection.ConnectionImp"%>
<%
//Enumeration en=session.getAttributeNames();
//if(en.hasMoreElements()){
	String username = session.getAttribute("temp").toString();
	String imageId = (String)request.getParameter("image");
	String uservalue = (String)request.getParameter("uservalue");
	String qanswer = (String)request.getParameter("answer");
	Controls c = new Controls();
	Boolean flag = c.authenticationValidation(imageId,uservalue);
%>
	<head>
		<link rel="stylesheet" href="style.css" media="screen" />
		<link rel="shortcut icon" type="image/png" href="images\NACL.png">
	</head>
	<TITLE>Nagarjuna Agrichem Pvt Ltd</TITLE>
	<body>
		<br>
		<font color="#009933" size="+3" face="Arial, Helvetica, sans-serif">Nagarjuna Agrichem</font>&nbsp
		<font color="#009933" size="+2" face="Arial, Helvetica, sans-serif">Accounts</font>
		<br><br>
<%
	if(flag)
	{
		String password = c.forgetPassword(username,qanswer);
		if(password!=null)
		{
			session.removeAttribute("temp");
%>			<h3><b>Your password is :<font color="green"><%=password%></b></h3>
			<br><br><a href="login.jsp"><input type="button" value="I know my password"></a>
<%		}
		else
		{
%>			<h3><b>Security answer is invalid. <font color="red"><a href="GetQuestion.jsp">Go back</a></b></h3>
<%		}
	}
	else
	{
		response.sendRedirect("ForgetPassword.jsp");
	}
//}
//else
//	response.sendRedirect("login.jsp");
%>	</body>
	