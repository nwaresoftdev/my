<%@ include file="banner.jsp"%>
<%@ include file="removecache.jsp"%>
<%@ page language="java" import="java.util.*,control.Controls,connection.ConnectionImp"%>
<HTML>
<head>
<link rel="stylesheet" href="style.css" media="screen" />
<link rel="shortcut icon" type="image/png" href="images\NACL.png">
<script language="javascript" type="text/javascript">
	 function check()
	 {
		var ans=document.getname.answer.value;
		var uans=document.getname.uservalue.value;
		if(ans=="")
		{
			alert("Pease Enter Answer");
			getname.answer.focus();
			return false;
		}
		if(uans=="")
		{
			alert("Type the characters that you see in the picture");
			getname.uservalue.focus();
			return false;
		}
		else
			return true;
	 }
	 function load()
	 {
		getname.answer.focus();
	 }
</script>
<TITLE>Nagarjuna Agrichem Pvt Ltd</TITLE>
</head>
<body onLoad="load()">
 <%
		String username=request.getParameter("username");
		String[] theImages = {"image01.jpg","image02.jpg","image03.jpg","image04.jpg","image05.jpg","image06.jpg","image07.jpg","image08.jpg","image09.jpg","image10.jpg","image11.jpg","image12.jpg","image13.jpg","image14.jpg","image15.jpg","image16.jpg","image17.jpg","image18.jpg","image19.jpg","image20.jpg","image21.jpg","image22.jpg","image23.jpg","image24.jpg","image25.jpg","image26.jpg","image27.jpg"};
		String path="images/userauth/";
		int arrayValue=(int)(Math.random()*theImages.length);
		String filename=theImages[arrayValue];
		String urlpath=path+filename;
		Controls c = new Controls();
		String question = c.getQuestion(username);
		session.setAttribute("temp",username);
		session.setAttribute("user","null");
%>
		<form action="ForgetPasswordChecking.jsp" name="getname" method="POST">
			<br>
			<font color="#009933" size="+3" face="Arial, Helvetica, sans-serif">Nagarjuna Agrichem</font>&nbsp
			<font color="#009933" size="+2" face="Arial, Helvetica, sans-serif">Accounts</font>
			<br><br>
<%
		if(question==null){
%>
		Username is Invalid.<br><br>
		<a href="ForgetPassword.jsp"><input type="button" value="   Back   "/></a>
<%		}
		else if(username==null)
			response.sendRedirect("ForgetPassword.jsp");
		else
		{
%>			
			<h3>
				<b>Password help for <font color="red"><%=username%></font></b>
			</h3>
			<br><br>
			Q)&nbsp<b><%=question%></b>
			<br>
			A)&nbsp<input type="password" name="answer">
			<br><br>
			Type the characters that you see in the picture below.
			<br><br>
			<img src="<%=urlpath%>"/>
			<input type="hidden" value="<%=filename%>" name="image">
			<br>
			<input type="password" name="uservalue">&nbsp
			<img src="images/accessibility.gif">
			<br><br>
			<input type="submit" value=" Continue " onClick="return check()">
			</form>
<%
		}
%>
</html>