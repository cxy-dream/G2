package com.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
//数据库连接
public class Getcon {
	
	public static Connection getConnection() {
		Connection connection=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url ="jdbc:mysql://localhost:3306/dbdbdb?useUnicode=true&characterEncoding=UTF-8";
			String username="root";
			String password="123456";
			connection = DriverManager.getConnection(url, username, password);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return connection;
	}
}
