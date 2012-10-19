<%! String userid=null;
 Connection con=null;
 ResultSet rs=null;
 Statement st=null;
 %>

<table align="center" border="1">
 <tr><td width=108 height=21><font color="red">USER ID</td><td><font color="red">Discription</td><td><font color="red">TIME</FONT></td><td><font color="red">sender</td></tr>
 
 <%
 //String user=session.getAttribute("user").toString();
String user=session.getAttribute("user").toString();
    System.out.println(userid);
 try{
	 //SimpleDateFormat s=SimpleDateFormat("dd mm yyyy");
 // Class.forName("oracle.jdbc.driver.OracleDriver");
  //con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","blood","blood");
   // Class.forName("oracle.jdbc.driver.OracleDriver");
	// Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","blood","blood");
   Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:oradsn","ventech","Sathyat");
  
  
  System.out.println("con created...");
  String qry="select * from bd_message where userid= '"+user+"'";
  st=con.createStatement();
  rs=st.executeQuery(qry);
  while(rs.next())
	 {
%>
<tr><td width=108 height=21><%=rs.getString(1) %></td><td><%=rs.getString(2) %></td><td><%=rs.getDate(3)%></td><td><%=rs.getString(4)%></td></tr>
 <% } 
 }
 catch(Exception e)
 {
	 e.printStackTrace();}
%>
<%@ page import="java.sql.*,java.text.*" %> 
</table>
<form action="delete1.jsp">
<table align="center">
 <tr>
  <td> <font color="red">Sender ID</td>
  <td><input type="text" name="tid"></td>
  </tr>
   <tr>
     <td colspan="3"><center><input type="submit" value="Delete" class="button"></center> </td></tr>
	 </table>
	 </form>
          






