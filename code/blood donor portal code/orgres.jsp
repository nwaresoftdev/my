



<%@ page import="java.sql.*" %>


  <%
  String orgname=request.getParameter("name");
  String pwd=request.getParameter("pwd");
  String type=request.getParameter("type");
  String state=request.getParameter("state");
  String city=request.getParameter("city");
   String mobile=request.getParameter("mobile");

   
     try
	 {
  Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:odbc:oradsn","ventech","Sathyat");
	  String qry="insert into bd_orgcreate values(?,?,?,?,?,?)";
	  String qry1="insert into bd_login values(?,?,?,?)";
	  PreparedStatement st=con.prepareStatement(qry);
	  PreparedStatement ps=con.prepareStatement(qry1);
      st.setString(1,orgname);
	  st.setString(2,type);
	  st.setString(3,state);
	  st.setString(4,city);
	  st.setString(5,pwd);
	  st.setString(6,mobile);
	  ps.setString(1,orgname);
	  ps.setString(2,orgname);
	  ps.setString(3,pwd);
	  ps.setString(4,type);

	  int i=st.executeUpdate();
      int j=ps.executeUpdate();
	   if(i==1 && j==1)
	   { %>
	   <h5> <font color="red" >successfully Added ..... </h5>
	   <% } }
	   catch(Exception e)
	   {
		   out.print(e);
	   }
	   %>
   <link rel="shortcut icon" type="image/png" href="images\NACL.png">
<link rel="stylesheet" href="style.css" media="screen" />
</head>
<TITLE>Blood Donor Portal</TITLE>
<body>
<br><br><br>
	<center>
		<font color='red' font='arial' size='4'>
			
			<a href='addOrg.jsp'>Back To Previous Page</a>
		</font>
	</center>

