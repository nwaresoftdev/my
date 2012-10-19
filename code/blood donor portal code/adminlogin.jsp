<!--<%@ include file="banner.jsp"%>-->
<%@ include file="removecache.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
 <HEAD>
  <link rel="shortcut icon" type="image/png" href="images\NACL.png">
  <link rel="stylesheet" href="style.css" media="screen" />
  <TITLE>Blood donor</TITLE>
  <script language="javascript" type="text/javascript">
  function check()
  {
		var name=document.login.uname.value;
		var pwd=document.login.pwd.value;
		if(name=="")
		{
			alert("Pease Enter User Name");
			login.uname.focus();
			return false;
		}
		if(pwd=="")
		{
			alert("Pease Enter Password");
			login.pwd.focus();
			return false;
		}
		else
			return true;

  }
  function load()
  {
	login.uname.focus();
  }
  </script>
  <META NAME="Generator" CONTENT="EditPlus">
  <META NAME="Author" CONTENT="Nani">
  <META NAME="Keywords" CONTENT="">
  <META NAME="Description" CONTENT="NACL Portal Application">
 </HEAD>

 <BODY onLoad="load()" bgcolor="#FFFFFF">
 <form action="adminvalidations.jsp" id="login" name="login" method="post" >
 <center>
  </div>
 	<table>
    	<tr>
        	<td><label>User Name</label></td>
            <td width="10">:</td>
            <td><input type="text" name="uname" ></td>
        </tr>
        <tr><td colspan="3">&nbsp;</td></tr>
        <tr>
        	<td><label>Password</label></td>
            <td width="10">:</td>
            <td><input type="password" name="pwd"></td>
        </tr>
        <tr>
        	<td colspan="3">&nbsp</td>
        </tr>
        <tr>
        	<td colspan="3"><center>
            <input type="submit" value=" Login " class="button" name="login" onClick="return check()">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input type="reset" value=" Clear " class="button"></center>
            </td>
        </tr>
		<tr>
        	<td colspan="3">&nbsp</td>
        </tr>
		<tr>
        	<td colspan="3">
				</td>
        </tr>
    </table>
	<br><br>
	 <div align="right">
     <marquee start="left"><img src="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\new\images\animation\15.jpg" height="100" width="70" >
	 <img src="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\new\images\animation\11.jpg" height="100" width="85" >
	 <img src="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\new\images\animation\24.jpg" height="100" width="85" >
	 <img src="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\new\images\animation\25.jpg" height="100" width="85" >
	 <img src="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\new\images\animation\26.jpg" height="100" width="85" >
	 <img src="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\new\images\animation\27.jpg" height="100" width="85" >
	 <img src="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\new\images\animation\28.jpg" height="100" width="85" ></marquee>
    </div>
 </center>
 </BODY>
</HTML>