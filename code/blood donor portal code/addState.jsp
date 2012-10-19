<HTML>
 <HEAD>
  <link rel="shortcut icon" type="image/png" href="images\NACL.png">
  <link rel="stylesheet" href="style.css" media="screen" />
  <TITLE>Blood donor</TITLE>
  <script language="javascript" type="text/javascript">
  function check()
  {
		var state=document.login.state.value;
		var city=document.login.cit.value;
		if(state=="")
		{
			alert("Pease Valid State Name");
			login.state.focus();
			return false;
		}
		if(city=="")
		{
			alert("Pease Enter Valid City Name");
			login.cit.focus();
			return false;
		}
		else
			return true;

  }
  function load()
  {
	login.state.focus();
  }
  </script>
  <META NAME="Generator" CONTENT="EditPlus">
  <META NAME="Author" CONTENT="Nani">
  <META NAME="Keywords" CONTENT="">
  <META NAME="Description" CONTENT="NACL Portal Application">
 </HEAD>
 <body onLoad="load()">
<br><Br><Br><Br>
<center>
<form action="stateres.jsp" method="get" name="login">
<table>
 <tr>
  <td><font color="green">State</td><td><input type="text" name="state"></td>
  <tr>
   <tr>
  <td><font color="green">City</td><td><input type="text" name="cit"></td>
  <tr>
  <tr>
  <td colspan="2" align="center"><input type="submit" value="Add" class="button" onClick="return check()"></td></tr>
  </table>
  </form>
  </center>
