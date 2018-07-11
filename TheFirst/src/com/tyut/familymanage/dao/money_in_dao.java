package com.tyut.familymanage.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tyut.familymanage.DataSourceHolder.DBManager;
import com.tyut.familymanage.model.money_in_model;
import com.tyut.familymanage.model.money_out_model;
import com.tyut.familymanage.model.money_out_model_Query;


public class money_in_dao {
	DBManager db = new DBManager();
	Connection conn=null;
	PreparedStatement pst;
	ResultSet rs;
	
	public void money_in_add(money_in_model mi) {
		Connection conn = null;
		try {
			conn = db.getConn();
			final String sql = "INSERT INTO money_in (type,accounttype,money,time,note,MONEYINID) VALUES(?,?,?,?,?,to_char(sysdate,'yyyymmdd')*1000+test_auto_add.nextval)";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1,mi.getType());
			ps.setString(2,mi.getAccounttype());
			ps.setString(3,mi.getMoney());
			ps.setDate(4, mi.getTime());
			ps.setString(5, mi.getNote());
			System.out.println("添加成功");
			
			ps.execute();
			ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}
	
	
	public List<money_in_model> getInView() {
		Connection conn = null;
		List<money_in_model> miList = new ArrayList<money_in_model>();
		try {
			conn = db.getConn();
			final String sql = "select * from money_in";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
            while(rs.next()){  
            	   money_in_model mi = new money_in_model(); 
            	   mi.setMoneyinid(rs.getString("moneyinid"));
            	   mi.setType(rs.getString("type")); 
            	   mi.setAccounttype(rs.getString("accounttype"));
            	   mi.setMoney(rs.getString("money"));
            	   mi.setTime(rs.getDate("time"));        
            	   mi.setNote(rs.getString("note"));
                   miList.add(mi);
            }  
            System.out.println(miList);
            rs.close();
			ps.close();
		} catch (Exception e) {  
			e.printStackTrace();  
		}finally{
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return miList;
	}
	
	
	
	public void money_in_delete(String moneyinid) {
		Connection conn = null;
		try {
			conn = db.getConn();
			final String sql = "DELETE FROM money_in WHERE moneyinid = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,moneyinid);
			System.out.println(moneyinid);
			System.out.println("删除成功");
			
			ps.execute();
			ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}
	public void money_in_update(money_in_model mo) {
		Connection conn = null;
		try {
			conn = db.getConn();
			final String sql = "UPDATE money_in SET type=?,accounttype=?,money=?,time=?,note=? where moneyinid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,mo.getType());
			ps.setString(2,mo.getAccounttype());
			ps.setString(3,mo.getMoney());
			ps.setDate(4, mo.getTime());
			ps.setString(5, mo.getNote());
			ps.setString(6, mo.getMoneyinid());
			System.out.println("修改成功");
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
	
	public money_in_model getSingle(String moneyinid) {
		money_in_model mi=new money_in_model(); 
		Connection conn = null;
		try {
			conn = db.getConn();
			final String sql = "SELECT * FROM money_in WHERE moneyinid = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, moneyinid);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {				 
          	   mi.setType(rs.getString("type")); 
          	   mi.setAccounttype(rs.getString("accounttype"));
          	   mi.setMoney(rs.getString("money"));
          	   mi.setTime(rs.getDate("time"));      
          	   mi.setNote(rs.getString("note"));
          	   mi.setMoneyinid(rs.getString("moneyinid"));                 
			}
			System.out.println("获取单条信息成功");
			System.out.println(mi);
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
		return mi;
	}
	
	private String generateWhere(money_in_model miq) {
		StringBuffer buffer = new StringBuffer();
		if (miq.getType() !=null && miq.getType().trim().length() > 0) {
			buffer.append(" AND type = ? ");
		}
		if (miq.getAccounttype() !=null && miq.getAccounttype().trim().length() > 0) {
			buffer.append(" AND accounttype = ? ");
		}
		if (miq.getNote() != null && miq.getNote().trim().length() > 0) {
			buffer.append(" AND note like ?");
		}
		if (miq.getMoney() != null && miq.getMoney().trim().length() > 0) {
			buffer.append(" AND money = ?");
		}
		if (miq.getTime() != null) {
			buffer.append(" AND time = ? ");
		}
		
		return buffer.toString();
	}
	
	
	private void preparedPs(money_in_model miq,PreparedStatement ps)throws Exception{
		int count = 1;
		
		if (miq.getType() !=null && miq.getType().trim().length() > 0) {
			ps.setString(count++, miq.getType());
		}
		if (miq.getAccounttype() !=null && miq.getAccounttype().trim().length() > 0) {
			ps.setString(count++, miq.getAccounttype());
		}
		if (miq.getNote() != null && miq.getNote().trim().length() > 0) {
			ps.setString(count++, "%"+miq.getNote()+"%");
		}
		if (miq.getMoney() != null && miq.getMoney().trim().length() > 0) {
			ps.setString(count++, miq.getMoney());
		}
		if (miq.getTime() != null ) {
			ps.setDate(count++, miq.getTime());
		}
	}
	
	public List<money_in_model> getByCondition(money_in_model miq) {
		List<money_in_model> milist = new ArrayList<money_in_model>();
		Connection conn = null;
		try {
			conn = db.getConn();
			final String sql = "SELECT * FROM money_in WHERE 1=1 "
					+ this.generateWhere(miq) + " ORDER BY moneyinid";
			PreparedStatement ps = conn.prepareStatement(sql);
			this.preparedPs(miq, ps);
			System.out.println("moq   "+miq);
			System.out.println("sql   "+sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				money_in_model mi = new money_in_model(); 
				mi.setType(rs.getString("type")); 
				mi.setAccounttype(rs.getString("accounttype"));
				mi.setMoney(rs.getString("money"));
				mi.setTime(rs.getDate("time"));        
				mi.setNote(rs.getString("note"));
				mi.setMoneyinid(rs.getString("moneyinid"));
				milist.add(mi);
			}
			System.out.println("查询成功");
			System.out.println("molist  "+milist);
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
		return milist;
	}
}
