<%@page import="java.sql.*"%>
<%
String name=null,uid=null,password=null,gender=null,email=null,
contact=null,bloodgroup=null,state=null,city=null,lddate=null,type="donor";
int age=0,weight=0;
Statement st=null,st1=null;
Connection con=null;


name=request.getParameter("name");
uid=request.getParameter("uid");
password=request.getParameter("pwd");
gender=request.getParameter("m");
email=request.getParameter("email");
contact=request.getParameter("contact");
bloodgroup=request.getParameter("bgroup");
state=request.getParameter("state");
city=request.getParameter("city");
age=Integer.parseInt(request.getParameter("age"));
weight=Integer.parseInt(request.getParameter("weight"));
lddate=request.getParameter("lddate");
System.out.println(lddate);
System.out.println(name+"..."+uid+".."+password+".."+"..."+gender+".."+".."+email+".."+".."+contact+".."+bloodgroup+".."+state+".."+city+".."+age+".."+weight+".."+lddate);
	 try{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:oradsn","ventech","Sathyat");
System.out.print("connction is created successfully");
st=con.createStatement();
String s="insert into BD_LOGIN values('"+name+"','"+uid+"','"+password+"','"+type+"')";
System.out.println("hhi");
System.out.print(s);
 st.executeUpdate(s);
 
 st1=con.createStatement();
 
 String s1="insert into BD_DETAILS values('"+uid+"','"+gender+"','"+contact+"','"+bloodgroup+"','"+state+"','"+city+"',"+age+","+weight+",'"+email+"','"+lddate+"')";
 System.out.print(s1);
 st1.executeUpdate(s1);
 out.print("successful entered");
 st.close();
 con.close();
	 }
	 catch(Exception e)
	 {
		 e.printStackTrace();
	 }
	 %>


