package com.tyut.familymanage.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tyut.familymanage.DataSourceHolder.DBManager;
import com.tyut.familymanage.model.UserModel;


public class UserDao {
	//添加注册用户
	public void user_add(UserModel user) {
		Connection conn = null;
		try {
			DBManager db = new DBManager();
			conn = db.getConn();
			final String sql = "INSERT INTO fm_user(UserName,Password,Sex,Phone,Email,Province,City,Area) VALUES(?,?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUserName());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getSex());
			ps.setString(4, user.getPhone());
			ps.setString(5, user.getEmail());
			ps.setString(6, user.getProvince());
			ps.setString(7, user.getCity());
			ps.setString(8, user.getArea());
			ps.execute();
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}
	//用户登录
	public void user_login(UserModel user) {
		Connection conn = null;
		try {
			DBManager db = new DBManager();
			conn = db.getConn();
			final String sql = "SELECT UserName,Password FROM fm_user WHERE UserName=? AND Password=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, user.getUserName());
			ps.setString(2, user.getPassword());
			ResultSet rs = null;  
			rs = ps.executeQuery();  
	            if(rs.next()){  	                 
	                user.setUserName(rs.getString("UserName"));  
	                user.setPassword(rs.getString("Password"));
	            }  
	            ps.execute();
	            ps.close();
		}catch (SQLException e) {  
            System.out.println("登陆错误！");  
            e.printStackTrace();  
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}
	public boolean validate(UserModel user){
		boolean b=false;
		Connection conn = null;
		try {
			DBManager db = new DBManager();
			conn = db.getConn();
			final String sql = "select password from fm_user where username = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUserName());
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				if(rs.getString("password").equals(user.getPassword())){
					b=true;
				}
				else
					b=false;
			}
			
			rs.close();
			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return b;
	}
	//用户修改密码
	public void UpdatePassword(UserModel user) {
		Connection conn = null;
		try {
			DBManager db = new DBManager();
			conn = db.getConn();
			final String sql = "UPDATE fm_user SET Password=?  WHERE UserName=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			int count = 1;
			ps.setString(count++, user.getPassword());
			ps.setString(count++, user.getUserName());
			ps.execute();
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	//用户详情
	public List<UserModel> getView() {
		Connection conn = null;
		List<UserModel> userList = new ArrayList<UserModel>();
		try {
			DBManager db = new DBManager();
			conn = db.getConn();
			final String sql = "select * from fm_user ";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
            while(rs.next()){  
            		UserModel user = new UserModel(); 
            		user.setUserName(rs.getString("UserName"));
            		user.setPassword(rs.getString("Password"));
            		user.setSex(rs.getString("Sex"));
            		user.setPhone(rs.getString("Phone"));
            		user.setEmail(rs.getString("Email"));          
            		user.setProvince(rs.getString("Province"));
            		user.setCity(rs.getString("City"));
            		user.setArea(rs.getString("Area"));
            		userList.add(user);
            }  
            System.out.println(userList);
            rs.close();
			ps.close();
		} catch (Exception e) {  
			e.printStackTrace();  
		}finally{
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return userList;
	}
}
