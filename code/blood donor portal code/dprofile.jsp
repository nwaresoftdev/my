<%@ page import="java.sql.*" %> 
<%@ page import="java.util.*"%>

<%!Connection con=null;
 ResultSet rs=null;
 Statement st=null;
 String userid=null,name=null;%>
 <html>
 <body >
 <center>
 <table border="2">
<tr><th><font color="red">UserId</th><th><font color="red">Name</th><th><font color="red">Gen</th><th><font color="red">Mobile</th><th><font color="red">Bggroup</th><th><font color="red">state</th><th><font color="red">city</th><th><font color="red">Age</th><th><font color="red">weight</th><th><font color="red">email</th><th><font color="red">LastDonateDate</th></tr>
<%

 try{

	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  Connection con=DriverManager.getConnection("jdbc:odbc:oradsn","ventech","Sathyat");
  System.out.println("connection is created");
  String s="select t1.userid,t1.name,t2.* from bd_login t1,bd_details t2 where t1.userid=t2.userid";
  st=con.createStatement();
    rs=st.executeQuery(s);
 
  while(rs.next())
	 {
	  %>
<tr><td>

	 <tr><td> <%=rs.getString(1)%></td><td> <%=rs.getString(2)%></td><td> <%=rs.getString(4)%></td><td> <%=rs.getString(5)%></td><td> <%=rs.getString(6)%></td><td> <%=rs.getString(7)%></td><td> <%=rs.getString(8)%></td><td> <%=rs.getInt(9)%></td><td> <%=rs.getInt(10)%></td><td> <%=rs.getString(11)%></td><td> <%=rs.getString(12)%></td></tr>
	<%
	 }
	
 }
 catch(Exception e)
 {
	 e.printStackTrace();
	 }
%>
</center>
</table>
</div>
</body>
</html>
