 <link rel="stylesheet" href="style.css" media="screen" />
  <TITLE>Blood donor</TITLE>
  <script language="javascript" type="text/javascript">
  function check()
  {
		var bg=document.login.bgroup.value;
		
		if(bg=="")
		{
			alert("Pease Valid Group Name");
			login.bgroup.focus();
			return false;
		}
		else
			return true;

  }
  function bgroup1(b)
  {
	  var b1=/^([a-z][a-z][a-z][a-z][a-z][+-])/;
	  if (b1.test(b))
	  {
		  //valid
	  }
	  else
	  {
		  alert("enter correct blood group");
		   return false;
	  }
	 
  }
  function load()
  {
	login.bgroup.focus();
  }
  </script>
  <META NAME="Generator" CONTENT="EditPlus">
  <META NAME="Author" CONTENT="Nani">
  <META NAME="Keywords" CONTENT="">
  <META NAME="Description" CONTENT="NACL Portal Application">
 </HEAD>
 <body onLoad="load()">
 <center>
 <form action="bgroupres.jsp" name="login" >
 <table>
  <tr>
   <td><font color="green">Blood Group Name</td><td><input type="Text" name="bgroup" id="bgroup" onblur="bgroup1(this.value)"></td>
  </tr>
  <tr><td colspan="2" align="Center"><input type="submit" value="Add" class="button" onClick=" return check()"></td></tr>
  </table>
  </center>
  </body>