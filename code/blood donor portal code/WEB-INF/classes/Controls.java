// Control.java
package control;
import java.sql.*;
import connection.ConnectionImp;
public class Controls
{


	/*	ConnectionImp is a class from connection package. Create "c" Object
		for access those methods like Driver Loading and Create Connection
	*/
	ConnectionImp c=new ConnectionImp();
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;



	/*	Constuctor of Controls. Here Controls Class object is created then
		automatically Driver Loading and CreateConnection executed.
	*/
	public Controls()
	{
		try
		{
			c.driverLoad();
			con=c.createConnection();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}





	public Boolean validation(String name,String pwd,Boolean check)
	{
		Boolean flag=false;
		try
		{
			String s="select password from employee where username=? and password=?";
			ps=con.prepareStatement(s);
			ps.setString(1,name);
			ps.setString(2,pwd);
			rs=ps.executeQuery();
			if(rs.next())
				flag=true;
			else
				flag=false;
			rs.close();
			ps.close();
		}
		catch (Exception ex1)
		{
			ex1.printStackTrace();
		}
		if(check)
			closeCon();
		return flag;
	}








	public Boolean changePassword(String name,String oldpwd,String newpwd)
	{
		Boolean flag1=false;
		Boolean flag2=false;
		try
		{
			flag1=validation(name,oldpwd,false);
			if(flag1)
			{
				String s="update employee set password=? where username=?";
				ps=con.prepareStatement(s);
				ps.setString(1,newpwd);
				ps.setString(2,name);
				int check=ps.executeUpdate();
				if(check>0)
					flag2=true;
				else
					flag2=false;
				ps.close();
			}
		}
		catch (Exception ex2)
		{
			ex2.printStackTrace();
		}
		closeCon();
		return flag2;				
	}



	/*
		this authernticationValidation() is used checking the user enter
		value( like show image text and type that text). Here this method
		take 2 parameters (imageid and imagevalue)those are passed through
		one execute sql query. that query checking if user entered string
		is matched or not through imageid value. If Matched then return true
		value otherwise return false value...
	*/
	public Boolean authenticationValidation(String imageid,String imagevalue)
	{
		Boolean flag=false;
		try
		{
			String s="select * from authvalid where imageid=? and imagevalue=?";
			ps=con.prepareStatement(s);
			ps.setString(1,imageid);
			ps.setString(2,imagevalue);
			rs=ps.executeQuery();
			if(rs.next())
				flag=true;
			else
				flag=false;
			rs.close();
			ps.close();
		}
		catch (Exception ex3)
		{
			ex3.printStackTrace();
		}
		return flag;
	}






	public String forgetPassword(String username,String sanswer)
	{
		String check=null;
		try
		{
			String s="select password from employee where username=? and sanswer=?";
			ps=con.prepareStatement(s);
			ps.setString(1,username);
			ps.setString(2,sanswer);
			rs=ps.executeQuery();
			if(rs.next()){
				check=rs.getString(1); System.out.println(check);}
			else
				check=null;
			rs.close();
			ps.close();
		}
		catch (Exception ex4)
		{
			ex4.printStackTrace();
		}
		closeCon();
		return check;
	}


	public String getQuestion(String username)
	{
		String check=null;
		try
		{
			String s="SELECT securityq FROM employee WHERE username=?";
			ps=con.prepareStatement(s);
			ps.setString(1,username);
			rs=ps.executeQuery();
			if(rs.next())
				check=rs.getString(1);
			else
				check=null;
			rs.close();
			ps.close();
		}
		catch (Exception ex5)
		{
			ex5.printStackTrace();
		}
		closeCon();
		return check;
	}


	public void closeCon()
	{
		try
		{
			con.close();	
		}
		catch (Exception exn)
		{
			exn.printStackTrace();
		}
	}
}