<link rel="stylesheet" media="screen" href="style.css" />
 <script language="javascript" type="text/javascript">
  function check()
  {
		var name=document.login.uid.value;
		var msg=document.login.msg.value;
		if(name=="")
		{
			alert("Pease Enter User Id");
			login.uid.focus();
			return false;
		}
		if(msg=="")
		{
			alert("Pease Enter Ur Message");
			login.msg.focus();
			return false;
		}
		else
			return true;

  }
  function load()
  {
	login.uid.focus();
  }
  </script>
<body onLoad="load()">
<%  String user="nonuser"; %>
<center>
 <form action="message2.jsp" method="post" name="login">
 <h4> <font color="red" >Write Message Here </font> <h4>
<table>
 <tr><td><label>User Id </label></td><td><input type="text" name="uid"></td></tr>
<tr>
 <td ><label>Compose here </label></td><td><TEXTAREA NAME="msg" ROWS=5 COLUMNS=75></TEXTAREA></td>
 </tr>
 <tr><td></td></tr>
  <tr><td></td></tr>
 <tr>
 </tr>
 <tr align="center"><td colspan="2"> &nbsp;&nbsp;<input type="submit"  class="button" value="send" onClick="return check()">
   &nbsp;&nbsp;&nbsp;&nbsp;
            <input type="reset" value=" Clear " class="button"></center>
            </td></tr>
<tr><td><input type="hidden" name=user value=<%=user%>></td></tr>
 </table>
  <div align="right">
     <marquee start="left"><img src="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\new\images\animation\15.jpg" height="100" width="70" >
	 <img src="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\new\images\animation\11.jpg" height="100" width="85" >
	 <img src="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\new\images\animation\24.jpg" height="100" width="85" >
	 <img src="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\new\images\animation\25.jpg" height="100" width="85" >
	 <img src="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\new\images\animation\26.jpg" height="100" width="85" >
	 <img src="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\new\images\animation\27.jpg" height="100" width="85" >
	 <img src="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\new\images\animation\28.jpg" height="100" width="85" ></marquee>
    </div>
 </form>
</center>
</body>