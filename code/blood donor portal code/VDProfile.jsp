<%@ page import="java.sql.*" %>

<% String donorid=session.getAttribute("user").toString(); %>
<table border="1"><tr><td><font color="red">Donor Name</font></td><td><font color="red">Donor Id</td><td><font color="red">Gender</td><td><font color="red">Mobile Num</td><td><font color="red">Bgroup</td><td><font color="red">State</td><td><font color="red">City</td><td><font color="red">Age</td><td><font color="red">Weight</td><td><font color="red">Mail</td><td><font color="red">Last Donation Date</td></tr>
  <% 
   try
   {  
	   //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	   //Connection con=DriverManager.getConnection("jdbc:odbc:blood","blood","blood");
    // Class.forName("oracle.jdbc.driver.OracleDriver");
	 //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","blood","blood");
	   Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	 Connection con=DriverManager.getConnection("jdbc:odbc:oradsn","ventech","Sathyat");
	 System.out.println("created...");
        Statement st=con.createStatement();
		Statement st1=con.createStatement();
		String qry="select name from bd_login where userid='"+donorid+"'";
		String user=null;
		System.out.println(qry);
     ResultSet rs=st.executeQuery(qry);
        while(rs.next())
	   {  
	    user=rs.getString(1);        
       }  
	    
	   String qry2="select * from bd_details  where userid='"+donorid+"'";
	        ResultSet rs1=st1.executeQuery(qry2);
                   while(rs1.next())
					  {
				   %>
<tr><td><%=user%></td><td><%=rs1.getString(1)%></td><td><%=rs1.getString(2)%></td><td><%=rs1.getString(3)%> </td><td><%=rs1.getString(4)%></td><td><%=rs1.getString(5)%></td><td><%=rs1.getString(6)%></td><td><%=rs1.getString(7)%></td><td><%=rs1.getString(8)%></td><td><%=rs1.getString(9)%></td><td><%=rs1.getString(10)%></tr>
                      <% }
			  %>
				  </table>
			  	   <%	}         
   catch(Exception e)
   {
	   e.printStackTrace();
   }
   %>





