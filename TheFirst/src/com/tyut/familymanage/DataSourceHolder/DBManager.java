package com.tyut.familymanage.DataSourceHolder;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * ��Ҫ���ڶ����ݿ�����Ӻ͹ر�
 * @author new
 *
 */
public class DBManager {
	private Connection conn;
	private PreparedStatement pst;
	private ResultSet rs;
	//���ӷ���
	public Connection getConn(){
		try {
			//1.��������
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//2.��������
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
	
	
	
	//�رշ���
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
	//����
//	public static void main(String[] args) {
//		DBManager db = new DBManager();
//		Connection conn = db.getConn();
//		System.out.println(conn);
//	}
}
