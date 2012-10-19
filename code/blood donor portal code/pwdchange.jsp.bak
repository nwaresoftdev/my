<%@ include file="banner.jsp"%>
<%@ include file="removecache.jsp"%>
<%	
	Enumeration enc=session.getAttributeNames();
	if(enc.hasMoreElements())
	{
%>
		<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
		<HTML>
		 <HEAD>
		 <script language="javascript" type="text/javascript">
		 <link rel="stylesheet" href="style.css" media="screen" />
		  function check()
		  {
				var current=document.changepass.current.value;
				var newp=document.changepass.newp.value;
				var confirm=document.changepass.confirm.value;
				if(current=="")
				{
					alert("Pease Enter Current Password");
					changepass.current.focus();

					return false;
				}
				if(newp=="")
				{
					alert("Pease Enter New Password");
					changepass.newp.focus();
					return false;
				}
				if(confirm=="")
				{
					alert("Pease Enter Confirm Password");
					changepass.confirm.focus();
					return false;
				}
				if(newp!=confirm)
				{
					alert("New password and Confirm password is not equal\n please check once again");
					changepass.newp.value="";
					changepass.confirm.value="";
					changepass.newp.focus();
					return false;
				}
				else
					return true;
		  }
		 function load()
		  {
			changepass.current.focus();
		  }
		  </script>
		  <TITLE>.</TITLE>
		  <META NAME="Generator" CONTENT="EditPlus">
		  <META NAME="Author" CONTENT="Nani">
		 </HEAD>

		 <BODY onload="load()">
		<form action="changepassword.jsp" method="POST" id="changepass" name="changepass">
		<center>
			<br><br><br>
			<table>
				<tr>
					<td><label>Current Password :</label></td>
					<td width="10">&nbsp</td>
					<td><input type="password" name="current"></td>
				</tr>
				<tr>
					<td><label>New Password :</label></td>
					<td width="10">&nbsp</td>
					<td><input type="password" name="newp"></td>
				</tr>
				<tr>
					<td><label>Cofirm Password :</label></td>
					<td width="10">&nbsp</td>
					<td><input type="password" name="confirm"></td>
				</tr>
				<tr>
					<td height="30">&nbsp</td>
					<td>&nbsp</td>
					<td>&nbsp</td>
				</tr>

				<tr>
					<td colspan="3"><center>
					  <input type="submit" value="Change" name="submit" OnClick="return check()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					
					<input type="reset" value="Clear"></center></td>
				</tr>
			</table>
		</center>
		</form>
		  
		 </BODY>
		</HTML>
<%

	}
	else
	{
		response.sendRedirect("login.jsp");
	}
%>
