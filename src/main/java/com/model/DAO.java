package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DAO {
	public static Connection getCon() {
		Connection con=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nacs1", "root", "vine96");
			
			System.out.println(con);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return con;
		
	}
	
	public int sigUp(Data d) {
		int res=0;
		
		try {
			Connection con=DAO.getCon();
			
			PreparedStatement pst=con.prepareStatement("insert into jee_mvc1 values(?,?,?,?,?,?,?)");
			
			pst.setInt(1, d.getUserId());
			pst.setString(2, d.getFullName());
			pst.setString(3, d.getEmail());
			pst.setString(4, d.getPassword());
			pst.setString(5, d.getDob());
			pst.setLong(6, d.getPhoneno());
			pst.setString(7, d.getGender());
			
			res=pst.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return res;
	}
	
	
}
