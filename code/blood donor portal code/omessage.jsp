
<%@page import="java.sql.*" %>

<%! String message=null,uid=null;
 Connection con=null;
 ResultSet rs=null;int i;
 Statement st=null;
 %>

<% 
String user=session.getAttribute("user").toString();
   uid=request.getParameter("uid");
   message=request.getParameter("msg");
  // session.setAttribute("userid",uid);
  System.out.println(uid);
  System.out.println(message); 
    try{
		java.util.Date d=new java.util.Date();
  //Class.forName("oracle.jdbc.driver.OracleDriver");
  //con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","blood","blood");
  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	 Connection con=DriverManager.getConnection("jdbc:odbc:oradsn","ventech","Sathyat");
  System.out.println("created");
  String qry="insert into BD_message values('"+uid+"','"+message+"',SYSDATE,'"+user+"')";
  System.out.print(qry);
  st=con.createStatement();
  i=st.executeUpdate(qry);
  session.setAttribute("time",d);
  if(i==0)  
  %>
  <H4> <font color="red">U r message  has been sent </h4>
  <%
  }
  catch(Exception e)
  {
	  out.print(e);
  }
  
   %>









