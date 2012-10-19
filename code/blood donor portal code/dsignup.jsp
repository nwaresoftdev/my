<%@ include file="removecache.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
 <HEAD>
  <link rel="shortcut icon" type="image/png" href="images\NACL.png">
  <link rel="stylesheet" href="style.css" media="screen" />
  <TITLE>Blood Donor Web Portal</TITLE>
  <script language="javascript" type="text/javascript">

   function check()
  { 
		var cname=document.login.name.value;
		var cuid=document.login.uid.value;		
		var cpwd=document.login.pwd.value;
		var ccpwd=document.login.cpwd.value;
		var cemail=document.login.email.value;
		var ccontact=document.login.contact.value;
		var cbgroup=document.login.bgroup.value;
		var cstate=document.login.state.value;
		var ccity=document.login.city.value;
		var cage=document.login.age.value;
		var cweight=document.login.weight.value;
		var clddate=document.login.lddate.value;
		if(cname=="")
		{
			alert("Pease Enter User Name");
			login.name.focus();
			return false;
		}
		if(cpwd=="")
		{
			alert("Pease Enter Password");
			login.pwd.focus();
			return false;
		}
		if(cuid=="")
		{
			alert("Pease Enter User id");
			login.uid.focus();
			return false;
		}
		if(ccpwd=="")
		{
			alert("Pease Enter Confirm Password Name");
			login.cpwd.focus();
			return false;
		}
		if(cuid!=ccpwd)
	  {
			alert("enter confirm password correct");
			login.cpwd.focus();
			return false;
	  }
	  if ( (login.m[0].checked == false ) && ( login.m[1].checked == false ) ) 
		  { 
		  alert ( "Please choose your Gender: Male or Female" ); 
		  return false;
		  }
		if(cemail=="")
		{
			alert("Pease Enter email Name");
			login.email.focus();
			return false;
		}
		if (document.login.cemail.value.search(emailRegEx) == -1) {
          alert("Please enter a valid email address.");
		  login.email.focus();
		  return false;
         }

		if(ccontact=="")
		{
			alert("Pease Enter Contact Number ");
			login.contact.focus();
			return false;
		}
		if(cbgroup=="")
		{
			alert("Please blood group");
			login.bgroup.focus();
			return false;
		}
		if(cstate=="")
		{
			alert("Please Enter State ");
			login.state.focus();
			return false;
		}
		if(ccity=="")
		{
			alert("Please Enter city");
			login.city.focus();
			return false;
		}
		if(cage=="")
		{
			alert("Please Enter age");
			login.age.focus();
			return false;
		}
		if(cweight=="")
		{
			alert("Please Enter weight");
			login.weight.focus();
			return false;
		}if(cddate=="")
		{
			alert("Please Enter date");
			login.lddate.focus();
			return false;
		}
		else
	return true;

  }

  function email1(){
	var status = false;     
var emailRegEx = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i;
     if (document.login.email.value.search(emailRegEx) == -1) {
          alert("Please enter a valid email address.");
		  login.email.focus();
		  return false;
     }
  }
  function cpwd1()
  {
		if(document.login.pwd.value!=document.login.cpwd.value)
	  {
			alert("enter cofirm password correctly");
			return false();
	  }
  }
function mobile1(phone) {
    var regex = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;

    if (regex.test(phone)) {
        // Valid international phone number
    } else {
        alert("invalid contact number");
		return false();
    }
}

function date1(dat)
{
	 var matches = /^(\d{2})[-\/](\d{2})[-\/](\d{4})$/.exec(dat);
    if (matches == null) 
	{
		
	
	var d = matches[2];
    var m = matches[1] - 1;
    var y = matches[3];
    var composedDate = new Date(d, m, y);
    return composedDate.getDate() == d &&
            composedDate.getMonth() == m &&
            composedDate.getFullYear() == y;
	alert("enter correct date");
	}
		return false;
    
}


 
  function load()
  {
	login.name.focus();
  }
  </script>
 </HEAD>

<br><br><br><br>
</head>

<body>
 <center>
<form action="dlogin1.jsp"  name="login">
<table border=0 cellspacing=8,cellpadding=8>
<center>
<h3><u><font color="REd">Donor Regestration</font></u></h3>
<tr><td><label>Name</label></td><td><input type="text" name="name"></td>
<tr><td><label>uid</label></td><td><input type="text" name="uid"></td>
<tr><td><label>Password</label></td><td><input type="password" name="pwd" id="pwd"></td>
<tr><td><label>Confirm Password</label></td><td><input type="password" name="cpwd" id="cpwd" onblur="cpwd1()" ></td>
<tr><td><input type="radio" name=m value=m><label>male</label>
      <input type="radio" name=m value=f><label>Female</label></td></tr>
<tr><td><label>email</label></td><td><input type="text" name="email"  id="email" onblur="email1()"></td>
<tr><td><label>Contact</label></td><td><input type="text" name="contact" onblur="mobile1(this.value)"></td>
<tr><td><label>Blood Gruop</label></td><td><select name="bgroup">
<option value=a>A</option>
<option value=b+>A+</option>
<option value=a->A-</option>
<option value=b>B</option>
<option value=b+>B+</option>
<option value=b->B-</option>
<option value=ab>AB</option>
<option value=ab+>AB+</option>
<option value=ab->AB-</option>
<option value=o>O</option>
<option value=o+>O+</option>
<option value=o->O-</option>
<tr><td><label>State</label></td><td><input type="text" name="state"></td>
<tr><td><label>City</label></td><td><input type="text" name="city"></td>
<tr><td><label>Age</label></td><td><input type="text" name="age"></td>
<tr><td><label>Weight</label></td><td><input type="text" name="weight"></td>
<tr><td><label>Last Donation Date</label></td><td><input type="text" name="lddate" id="lddate" onblur="date1(this.value)"></td></tr>
</table>
<input type="submit" value=" Register " class="button" onClick="return check()">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input type="reset" value=" Clear " class="button">
			</center>
</form>

</body>
</html>