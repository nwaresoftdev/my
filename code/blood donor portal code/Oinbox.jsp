<link rel="stylesheet" href="style.css" media="screen" />
<%! String userid=null;
 Connection con=null;
 ResultSet rs=null;
 Statement st=null;
 %>
 <% String orgname=session.getAttribute("orgname").toString(); %>
 WelCome TO <%=orgname %>

<table align="center" border="1">
 <tr class="tr"><td width=108 height=21><font color="red">USER ID</td><td><font color="red">Discription</td><td><font color="red">TIME</FONT></td></tr>
 
 <%
    System.out.println(orgname);
 try{
	 //SimpleDateFormat s=SimpleDateFormat("dd mm yyyy");
 // Class.forName("oracle.jdbc.driver.OracleDriver");
  //con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","blood","blood");
   // Class.forName("oracle.jdbc.driver.OracleDriver");
	// Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","blood","blood");
   Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	 con=DriverManager.getConnection("jdbc:odbc:oradsn","ventech","Sathyat");
  
  
  System.out.println("con created...");
  String qry="select * from bd_message where userid='"+orgname+"'";
  st=con.createStatement();
  rs=st.executeQuery(qry);
  while(rs.next())
	 {
%>
<tr><td width=108 height=21><%=rs.getString(1) %></td><td><%=rs.getString(2) %></td><td><%=rs.getDate(3)%></td></tr>
 <% } 
 }
 catch(Exception e)
 {
	 e.printStackTrace();}
%>
<%@ page import="java.sql.*,java.text.*" %> 
</table>






