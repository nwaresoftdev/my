<%
   String city=request.getParameter("city");
   String bg=request.getParameter("bg");
   String state=(String)session.getAttribute("state");
 System.out.println(" "+state+" "+city+" "+bg);
 %>					   
 <%@ page import="java.sql.*,java.util.*" %>
 <link href="style.css" rel="stylesheet" type="text/css" />
 
 <body class="th"><table width=1024 height=45 border="1" >
 <tr class="tr"><td class="th" id="table"><font color="red">Donor Name</td><td><font color="red">Donor Id</td><td><font color="red">Gender</td><td><font color="red">Mobile Num</td><td><font color="red">Bgroup</td><td><font color="red">State</td><td><font color="red">City</td><td><font color="red">Age</td><td><font color="red">Weight</td><td><font color="red">Mail</td><td><font color="red">Last Donation Date</td></th></tr>
  <% 
   try
   {   ArrayList al=new ArrayList();
	   Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	  Connection con=DriverManager.getConnection("jdbc:odbc:oradsn","ventech","Sathyat");
    // Class.forName("oracle.jdbc.driver.OracleDriver");
	 //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","blood","blood");
	 
	 System.out.println("created...");
        Statement st=con.createStatement();
		Statement st1=con.createStatement();
		String qry="select userid from bd_details where state='"+state+"'and city='"+city+"' and bgroup='"+bg+"'";
		
		System.out.println(qry);
     ResultSet rs=st.executeQuery(qry);
        while(rs.next())
	   {  
	    al.add(rs.getString(1));        
       }  
	     
	        Iterator itr=al.iterator();
	      while(itr.hasNext())
	          {    
			
               String userid=itr.next().toString();
			
	   String qry2="select t1.userid,t1.name,t2.* from bd_login t1,bd_details t2 where t1.userid=t2.userid";
	        ResultSet rs1=st1.executeQuery(qry2);
                   while(rs1.next())
					  {
				   %>
<tr><td><%=rs1.getString(1)%></td><td><%=rs1.getString(2)%></td><td><%=rs1.getString(4)%></td><td><%=rs1.getString(5)%> </td><td><%=rs1.getString(6)%></td><td><%=rs1.getString(7)%></td><td><%=rs1.getString(8)%></td><td><%=rs1.getString(9)%></td><td><%=rs1.getString(10)%></td><td><%=rs1.getString(11)%></td><td><%=rs1.getString(12)%></tr>
                      <% }
				  } %>
				  </table>
			  	   <%
	   }
   catch(Exception e)
   {
	   e.printStackTrace();
   }
   %>







