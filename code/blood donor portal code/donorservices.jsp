<%@ page import ="java.sql.*" %>
<% String donorid=session.getAttribute("user").toString(); 
    try
	{
		   Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	 Connection con=DriverManager.getConnection("jdbc:odbc:oradsn","ventech","Sathyat");
		 //Class.forName("oracle.jdbc.driver.OracleDriver");
	  // Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","blood","blood");
	 Statement st=con.createStatement();
	 String qry="select name from bd_login where userid='"+donorid+"'";
	 ResultSet rs=st.executeQuery(qry);
	 while(rs.next())
		{
	%>
    <h4><font color="Green">WelCome Mr.<%=rs.getString(1) %> </h4>
	 <% } }
	catch(Exception e)
	{
		e.printStackTrace();
	}
	  %>