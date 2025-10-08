package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.List;
import java.util.Vector;

import javax.sql.rowset.JdbcRowSet;
import javax.sql.rowset.RowSetFactory;
import javax.sql.rowset.RowSetProvider;

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
	
	
	public List validate() {
		List li=new Vector();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			RowSetFactory rf=RowSetProvider.newFactory();
			
			JdbcRowSet jrs=rf.createJdbcRowSet();
			jrs.setUrl("jdbc:mysql://localhost:3306/nacs1");
			jrs.setUsername("root");
			jrs.setPassword("vine96");
			
			jrs.setCommand("select user_id, password from jee_mvc1");
			
			jrs.execute();
			
			while(jrs.next()) {
				li.add( jrs.getInt("user_id"));
				li.add( jrs.getString("password"));
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
			return li;
	}
	
	
	public List fetch(Data d) {
		List li=new Vector();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			RowSetFactory rf=RowSetProvider.newFactory();
			
			JdbcRowSet jrs=rf.createJdbcRowSet();
			jrs.setUrl("jdbc:mysql://localhost:3306/nacs1");
			jrs.setUsername("root");
			jrs.setPassword("vine96");
			
			jrs.setCommand("select * from jee_mvc1 where user_id=? AND password=?");
			jrs.setInt(1, d.getUserId());
			jrs.setString(2, d.getPassword());
			jrs.execute();
			
			Data d2=new Data();
			
			while(jrs.next()) {
				d2.setUserId(jrs.getInt("user_id"));
				d2.setFullName(jrs.getString("fullname"));
				d2.setEmail(jrs.getString("email"));
				d2.setPassword(jrs.getString("password"));
				d2.setDob(jrs.getString("dob"));
				d2.setPhoneno(jrs.getLong("phoneno"));
				d2.setGender(jrs.getString("gender"));
				
				li.add(d2);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return li;
	}
	
	
	public List fetchForUpdate(Data d) {
		List li=new Vector();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			RowSetFactory rf=RowSetProvider.newFactory();
			
			JdbcRowSet jrs=rf.createJdbcRowSet();
			jrs.setUrl("jdbc:mysql://localhost:3306/nacs1");
			jrs.setUsername("root");
			jrs.setPassword("vine96");
			
			jrs.setCommand("select * from jee_mvc1 where user_id=?");
			jrs.setInt(1, d.getUserId());
			jrs.execute();
			
			Data d2=new Data();
			
			while(jrs.next()) {
				d2.setUserId(jrs.getInt("user_id"));
				d2.setFullName(jrs.getString("fullname"));
				d2.setEmail(jrs.getString("email"));
				d2.setPassword(jrs.getString("password"));
				d2.setDob(jrs.getString("dob"));
				d2.setPhoneno(jrs.getLong("phoneno"));
				d2.setGender(jrs.getString("gender"));
				
				li.add(d2);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return li;
	}
	
	
	
	public int update(Data d) {
		int res=0;
		try {
			Connection con=DAO.getCon();
			
			PreparedStatement pst=con.prepareStatement("update jee_mvc1 set fullname=?, email=?, password=?, dob=?, phoneno=?, gender=? where user_id=?");
			pst.setString(1, d.getFullName());
			pst.setString(2, d.getEmail());
			pst.setString(3, d.getPassword());
			pst.setString(4, d.getDob());
			pst.setLong(5, d.getPhoneno());
			pst.setString(6, d.getGender());
			pst.setInt(7, d.getUserId());
			
			res=pst.executeUpdate();
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}
	
	
}
