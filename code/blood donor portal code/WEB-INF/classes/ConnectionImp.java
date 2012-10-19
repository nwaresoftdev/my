package connection;
import java.sql.*;
public class ConnectionImp 
{
	static Connection con=null;
	public static void driverLoad() throws SQLException,ClassNotFoundException
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver").newInstance();
		}
		catch (Exception Ex)
		{
			Ex.printStackTrace();
		}
	}
	public static Connection createConnection() throws SQLException
	{
		try
		{
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nacl","root","server");	
		}
		catch (Exception Ex1)
		{
			Ex1.printStackTrace();
		}
		return con;
	}
	public void closeConnection(Connection con)
	{
		try
		{
			con.close();
		}
		catch (Exception Ex1)
		{
			Ex1.printStackTrace();
		}
	}
}
