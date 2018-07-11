package com.tyut.familymanage.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.tyut.familymanage.DataSourceHolder.DBManager;
import com.tyut.familymanage.model.TestModel;

public class TestDao {
	private TestModel rs2model(ResultSet rs) throws Exception{
		TestModel test = new TestModel();
		test.setUserId(rs.getInt("UserId"));
		test.setAge(rs.getInt("age"));
		test.setUserName(rs.getString("UserName"));
		test.setEmail(rs.getString("Email"));
		return test;	
	}
	
	public List<TestModel> getAll() {
		List<TestModel> list = new ArrayList<TestModel>();
		Connection conn = null;
		try {
			DBManager db = new DBManager();
			conn = db.getConn();
			final String sql = "SELECT UserId,UserName,Age,Email FROM Test ORDER BY UserId";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				TestModel test = this.rs2model(rs);
				list.add(test);
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
		return list;
	}
}
