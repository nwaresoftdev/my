<%@ page import="java.sql.*,java.util.*" %> 


<%!Connection con=null;
 ResultSet rs=null;
 Statement st=null;
 String userid=null,name=null;%>

<%
 String uname=null,userid=null;

	 ArrayList al=new ArrayList();
	 al=ArrayList(session.getAttribute("name"));
	 Iterator it=al.iterator();
	 while(it.hasNext())
	 {
		 uname=it.next();
		 userid=it.next();
		 System.out.println(uname+userid);
	 }
	 %>