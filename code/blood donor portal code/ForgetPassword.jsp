<%@ include file="banner.jsp"%>
<%@ include file="removecache.jsp"%>
<html>
<head>
	<link rel="stylesheet" href="style.css" media="screen" />
	<link rel="shortcut icon" type="image/png" href="images\NACL.png">
	<script language="javascript" type="text/javascript">
	function check()
	{
		var name=document.forget.username.value;
		if(name=="")
		{
			alert("Pease Enter User Name");
			forget.username.focus();
			return false;
		}
		else
			return true;
	  }
	  function load()
	  {
		forget.username.focus();
	  }
	</script>
</head>
	<TITLE>Nagarjuna Agrichem Pvt Ltd</TITLE>
	<body onLoad="load()">
	<form action="GetQuestion.jsp" name="forget" method="POST">
		<br>
		<font color="#009933" size="+3" face="Arial, Helvetica, sans-serif">Nagarjuna Agrichem</font>&nbsp
		<font color="#009933" size="+2" face="Arial, Helvetica, sans-serif">Accounts</font>
		<br><br>
		<h3><b>Forgotten your password?</b></h3>
		<br>
		To reset your password, type the full username that you use to sign in to your Nagarjuna Agrichem Account. If you are a Nacl user, type your Nacl username.
		<br><br>
		<b>Username</b><br>
		<input type="text" name="username">
		<br><br>
		<input type="submit" value=" Submit " onClick="return check()">
	</form>
	</body>
</html>