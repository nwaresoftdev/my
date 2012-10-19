
<%@ page import="java.sql.*" %>

<% String orgname=session.getAttribute("user").toString(); %>
 <font color="green">WelCome To <%=orgname %> 
<table border="1"><tr><td><font color="red">Org Name</td><td><font color="red">State</td><td><font color="red">City</td><td><font color="red">Mobile Num</td></tr>
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
		String qry="select * from bd_orgcreate where orgname='"+orgname+"'";
		String user=null;
		System.out.println(qry);
     ResultSet rs=st.executeQuery(qry);
                   while(rs.next())
					  {
				   %>
<tr><td><%=rs.getString(1)%></td><td><%=rs.getString(3)%></td><td><%=rs.getString(4)%></td><td><%=rs.getString(6)%></td></tr>
                      <% }
			  %>
				  </table>
			  	   <%	}         
   catch(Exception e)
   {
	   e.printStackTrace();
   }
   %>





