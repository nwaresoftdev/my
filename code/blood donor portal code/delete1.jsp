  
  <link rel="stylesheet" href="style.css" media="screen" />
<%! 
  String userid=null;
  %>

  <%@ page import="java.sql.*" %>
  <%
   try
   {
   userid=request.getParameter("tid");
   Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con=DriverManager.getConnection("jdbc:odbc:oradsn","ventech","Sathyat");
	Statement st=con.createStatement();
    String qry="delete from bd_message where sender='"+userid+"'";
	int i=st.executeUpdate(qry);
     if(i==1)
	 {
	%>
   <h4> <font color="red" > YOUR MESSAGE IS DELETED </h5>
   <% 
	 }
	 }catch(Exception e)
	 {
		 e.printStackTrace();
	 }
		 %>
  
  <head>
<link rel="shortcut icon" type="image/png" href="images\NACL.png">
<link rel="stylesheet" href="style.css" media="screen" />
</head>
<TITLE>Blood Donor Portal</TITLE>
<body>
<br><br><br>
	<center>
		<font color='red' font='arial' size='4'>
			
			<a href='inbox1.jsp'>Back To InBox</a>
		</font>
	</center>
</body>

  



        
	     






