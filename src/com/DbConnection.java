package com;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {

	private static Connection connection;
	public static Connection getConnection() throws ClassNotFoundException, SQLException
	{
		if(connection==null){
			 Class.forName("com.mysql.jdbc.Driver");
			 connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/cleandb", "root", "admin");
		}
		return connection;
	}
}
