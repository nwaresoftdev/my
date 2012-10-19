
<link rel="stylesheet" href="style.css" media="screen" /><%
   String city=request.getParameter("city");
   String state=(String)session.getAttribute("state");
   System.out.println(" "+state+" "+city);
 %>					   
 <%@ page import="java.sql.*,java.util.*" %>
 <table border="1" cellpadding="5" cellspacing="3" class="table">
 <tr class="tr"><td><font color="red">Hospital Name</td><td><font color="red">State</td><td><font color="red">City</td><td><font color="red">Mobile</td></tr>
  <% 
   try
   {  
	   Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	   Connection con=DriverManager.getConnection("jdbc:odbc:oradsn","ventech","Sathyat");
        //Class.forName("oracle.jdbc.driver.OracleDriver");t
	 //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","blood","blood");
		System.out.println("created...");
        Statement st=con.createStatement();
String qry="select orgname,type,state,city,mobile from bd_orgcreate where state='"+state+"' and city='"+city+"' and type='hosp'";
		System.out.println(qry);
     ResultSet rs=st.executeQuery(qry);
          while(rs.next())
	      {    
		  %>
	  <tr><td><%=rs.getString(1) %> </td></td><td><%=rs.getString(3)%></td><td><%=rs.getString(4)%></td><td><%=rs.getString(5)%></td><tr> 
	      <% }
   }
   catch(Exception e)
   {
	   e.printStackTrace();
   }
   %>








