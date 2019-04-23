package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	public static Connection con = null;

	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinecertificate","root", "");
			System.out.println("connection is "+ con);
		return con;

	}

}

