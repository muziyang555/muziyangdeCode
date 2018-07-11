package com.tyut.familymanage.DataSourceHolder;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * 主要用于对数据库的连接和关闭
 * @author new
 *
 */
public class DBManager {
	private Connection conn;
	private PreparedStatement pst;
	private ResultSet rs;
	//连接方法
	public Connection getConn(){
		try {
			//1.加载驱动
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//2.创建连接
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","ENSEMBLE","ENSEMBLE");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return conn;
		
	}
	
	
	
	//关闭方法
	public void closeAll(){
		try {
			if(rs != null){
			rs.close();
			}
			if(pst != null){
			pst.close();
			}
			if(conn != null){
			conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	//测试
//	public static void main(String[] args) {
//		DBManager db = new DBManager();
//		Connection conn = db.getConn();
//		System.out.println(conn);
//	}
}
