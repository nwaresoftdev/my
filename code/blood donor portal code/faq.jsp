<link rel="stylesheet" media="screen" href="style.css" />
 <script language="javascript" type="text/javascript">
  function check()
  {
		var name=document.login.uid.value;
		var msg1=document.login.msg.value;
		if(name=="")
		{
			alert("Pease Enter User Id");
			login.uid.focus();
			return false;
		}
		if(msg1=="")
		{
			alert("Pease Enter Ur Message");
			login.msg1.focus();
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
<center>
 <form action="message.jsp" method="post" name="login">
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
 </table>

 </form>
</center>
</body>