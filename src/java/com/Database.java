package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.swing.JOptionPane;



/**
 * Servlet implementation class Database
 */
@WebServlet("/Database")
public class Database {
	final static String DB_URL = "jdbc:mysql://localhost/multibanking";
	final static String USER = "root";
	final static String PASS = "admin";
	public static Connection con(){
		Connection con;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(DB_URL, USER, PASS);
			return con;
		}catch(Exception e){
			System.out.println(e);
                        JOptionPane.showMessageDialog(null, e);
			return null;
		}
	}
	public static Statement st(){
		Statement stmt;
		try{
			stmt=Database.con().createStatement();
			return null;
		}catch(Exception e){
			System.out.println(e);
			return null;
		}
	}
	
}