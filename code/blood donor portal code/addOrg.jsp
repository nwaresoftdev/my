<%@ include file="removecache.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
 <HEAD>
  <link rel="shortcut icon" type="image/png" href="images\NACL.png">
  <link rel="stylesheet" href="style.css" media="screen" />
  <TITLE>Blood Donor Web Portal</TITLE>
  <script language="javascript" type="text/javascript">

  function mobile1(phone) {
    var regex = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;

    if (regex.test(phone)) {
        // Valid international phone number
    } else {
        alert("invalid contact number");
		return false()
    }
}

   function check()
  { 
	  var orgname=orgres.name.value;
	  var pwd=orgres.pwd.value;
	  var type=orgres.type.value;
	  var state=orgres.state.value;
	  var city=orgres.city.value;
	  var mobile=orgres.mobile.value;
	  if(orgname=="")
	  {
		  alert("enter orgname");
		  orgres.name.focus();
		  return false;

	  }
	   if(pwd=="")
	  {
		  alert("enter password");
		  orgres.pwd.focus();
		  return false;

	  }
	   if(type=="")
	  {
		  alert("select organization");
		  orgres.type.focus();
		  return false;

	  }
	   if(state=="")
	  {
		  alert("enter state");
		  orgres.state.focus();
		  return false;

	  }
	   if(city=="")
	  {
		  alert("enter city");
		  orgres.city.focus();
		  return false;

	  } if(mobile=="")
	  {
		  alert("enter orgname");
		  orgres.mobile.focus();
		  return false;

	  }
  }


</script>






<body>
<form action="orgres.jsp" name="orgres">
<table align="center">
<tr><td><font color="green">Org Name</td><td><input type="text" name="name"></tr>
<tr><td><font color="green">password</td><td><input type="password" name="pwd"></tr>

<tr><td> <font color="green">Type</td><td><select name="type">
		  <option value="bb"><--select--></option>
          <option value="bb">Blood Bank</option>
		  <option value="hosp">Hospital</option>
		  <option value="clinic">Clinics</option>
		  </select>
	   </td>
</tr>
<tr><td><font color="green">State</td><td><input type=text name="state"></td></tr>
<tr><td><font color="green">city</td><td><input type=text name="city"></td></tr>
<tr><td><font color="green">Mobile</td><td><input type=text name="mobile" onblur="mobile1(this.value)"></td></tr>
 <tr><td colspan="2" align="center"><input type="submit" value="ADD" class="button" onClick="return check()"></td></tr>
 </table>
 </form>




