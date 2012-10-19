<%@ page import="java.sql.*" %>
<%! 
 %>
  <% 
    String state=request.getParameter("state");
	String cit=request.getParameter("cit");
	System.out.println(state);
		System.out.println(cit);
      try
	 {
  Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:odbc:oradsn","ventech","Sathyat");
	  String qry="insert into bd_adaddress values('"+state+"','"+cit+"',null)";
	  Statement st=con.createStatement();
	  int i=st.executeUpdate(qry);
       if(i==1)
	   { %>
	   <h4> <font color="red" >Successfully Added ..... </h4>
	   <% } }
	   catch(Exception e)
	   {
		   e.printStackTrace();
	   }
	   %>











