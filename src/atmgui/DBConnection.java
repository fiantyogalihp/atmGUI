/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package atmgui;

import java.sql.*;

/**
 *
 * @author fiyuu
 */
public class DBConnection {
	private static Connection con;
	public Connection connect(){	
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/java_atm";
			String user = "root";
			String pass = "";
			
			con = DriverManager.getConnection(url, user, pass);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return con;
	}
}
