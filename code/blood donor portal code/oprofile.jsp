<link rel="stylesheet" href="style.css" media="screen" />
<%@ page import="java.sql.*" %> 


<%!Connection con=null;
 
 Statement st=null;
 String userid=null,name=null;%>

<html>
<body>

<table cellpadding="10" border="1"  align="center">
 <tr class="tr"><td ><font color="red">OrgName</td><td><font color="red">Type</td><td><font color="red">State</td><td><font color="red">City</td>
 <%
 
 try{
	   Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  con=DriverManager.getConnection("jdbc:odbc:oradsn","ventech","Sathyat");
    String s="select orgname,type,state,city from bd_orgcreate";
  st=con.createStatement();
 ResultSet rs=st.executeQuery(s);
  while(rs.next())
	 {
	  %>
	<tr><td><%=rs.getString(1) %><td><%=rs.getString(2) %><td><%=rs.getString(3) %><td><%=rs.getString(4) %><td>
	<%
	 }
	  rs.close();
	  st.close();
	  con.close();
 }
 catch(Exception e)
 {
	 out.print(e);
 }
 %>
		