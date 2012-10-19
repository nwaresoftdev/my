<%@ page import="java.sql.*" %>


<%!
  String bg=null;
  %>
  <%
   bg=request.getParameter("bgroup");
     try
	 {
  Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:odbc:oradsn","ventech","Sathyat");
	  String qry="insert into bd_adaddress values(null,null,'"+bg+"')";
	  Statement st=con.createStatement();
	  int i=st.executeUpdate(qry);
       if(i==1)
	   { %>
	   <h4><font color="red"> Successfully Added ..... </font> </h5>
	   <% } }
	   catch(Exception e)
	   {
		   e.printStackTrace();
	   }
	   %>
   
