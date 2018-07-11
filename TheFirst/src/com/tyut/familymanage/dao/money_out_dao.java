package com.tyut.familymanage.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tyut.familymanage.DataSourceHolder.DBManager;
import com.tyut.familymanage.model.money_out_model;
import com.tyut.familymanage.model.money_out_model_Query;


public class money_out_dao {
	DBManager db = new DBManager();
	Connection conn=null;
	PreparedStatement pst;
	ResultSet rs;
	
	public void money_out_add(money_out_model mo) {
		Connection conn = null;
		try {
			conn = db.getConn();
			final String sql = "INSERT INTO money_out (type,accounttype,money,time,shop,note,MONEYOUTID) VALUES(?,?,?,?,?,?,to_char(sysdate,'yyyymmdd')*1000+test_auto_add.nextval)";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1,mo.getType());
			ps.setString(2,mo.getAccounttype());
			ps.setString(3,mo.getMoney());
			ps.setDate(4, mo.getTime());
			ps.setString(5, mo.getShop());
			ps.setString(6, mo.getNote());
			System.out.println("添加成功");
			
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
	
	public List<money_out_model> getView() {
		Connection conn = null;
		List<money_out_model> moList = new ArrayList<money_out_model>();
		try {
			conn = db.getConn();
			final String sql = "select * from money_out order by moneyoutid";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
            while(rs.next()){  
            	   money_out_model mo = new money_out_model(); 
            	   mo.setType(rs.getString("type")); 
            	   mo.setAccounttype(rs.getString("accounttype"));
            	   mo.setMoney(rs.getString("money"));
            	   mo.setTime(rs.getDate("time"));
            	   mo.setShop(rs.getString("shop"));          
            	   mo.setNote(rs.getString("note"));
            	   mo.setMoneyoutid(rs.getString("moneyoutid"));
                   moList.add(mo);
            }  
            System.out.println(moList);
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
		
		return moList;
	}
	
	
	
	public void money_out_delete(String moneyoutid) {
		Connection conn = null;
		try {
			conn = db.getConn();
			final String sql = "DELETE FROM money_out WHERE moneyoutid = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,moneyoutid);
			System.out.println(moneyoutid);
			System.out.println("删除成功");
			
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
	public void money_out_update(money_out_model mo) {
		Connection conn = null;
		try {
			conn = db.getConn();
			final String sql = "UPDATE money_out SET type=?,accounttype=?,money=?,time=?,shop=?,note=? where moneyoutid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,mo.getType());
			ps.setString(2,mo.getAccounttype());
			ps.setString(3,mo.getMoney());
			ps.setDate(4, mo.getTime());
			ps.setString(5, mo.getShop());
			ps.setString(6, mo.getNote());
			ps.setString(7, mo.getMoneyoutid());
			System.out.println(mo);
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
	
	public money_out_model getSingle(String moneyoutid) {
		money_out_model mo=new money_out_model(); 
		Connection conn = null;
		try {
			conn = db.getConn();
			final String sql = "SELECT * FROM money_out WHERE moneyoutid = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, moneyoutid);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {				 
          	   mo.setType(rs.getString("type")); 
          	   mo.setAccounttype(rs.getString("accounttype"));
          	   mo.setMoney(rs.getString("money"));
          	   mo.setTime(rs.getDate("time"));
          	   mo.setShop(rs.getString("shop"));          
          	   mo.setNote(rs.getString("note"));
          	   mo.setMoneyoutid(rs.getString("moneyoutid"));                 
			}
			System.out.println("获取单条信息成功");
			System.out.println(mo);
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
		return mo;
	}
	
	private String generateWhere(money_out_model_Query moq) {
		StringBuffer buffer = new StringBuffer();
		if (moq.getType() !=null && moq.getType().trim().length() > 0) {
			buffer.append(" AND type = ? ");
		}
		if (moq.getAccounttype() !=null && moq.getAccounttype().trim().length() > 0) {
			buffer.append(" AND accounttype = ? ");
		}
		if (moq.getShop() != null && moq.getShop().trim().length() > 0) {
			buffer.append(" AND shop LIKE ?");
		}
		if (moq.getNote() != null && moq.getNote().trim().length() > 0) {
			buffer.append(" AND note like ?");
		}
		if (moq.getMoney() != null && moq.getMoney().trim().length() > 0) {
			buffer.append(" AND money = ?");
		}
		if (moq.getTime() != null && moq.getTime2() == null) {
			buffer.append(" AND time = ? ");
		}
		if (moq.getTime() != null && moq.getTime2() != null) {
			buffer.append(" AND time >= to_date('?','yyyy-MM-dd') ");
		}
		if (moq.getTime2() != null) {
			buffer.append(" AND time <= to_date('?','yyyy-MM-dd')");
		}
		
		return buffer.toString();
	}
	
	
	private void preparedPs(money_out_model_Query moq,PreparedStatement ps)throws Exception{
		int count = 1;
		
		if (moq.getType() !=null && moq.getType().trim().length() > 0) {
			ps.setString(count++, moq.getType());
		}
		if (moq.getAccounttype() !=null && moq.getAccounttype().trim().length() > 0) {
			ps.setString(count++, moq.getAccounttype());
		}
		if (moq.getShop() != null && moq.getShop().trim().length() > 0) {
			ps.setString(count++, "%"+moq.getShop()+"%");
		}
		if (moq.getNote() != null && moq.getNote().trim().length() > 0) {
			ps.setString(count++, "%"+moq.getNote()+"%");
		}
		if (moq.getMoney() != null && moq.getMoney().trim().length() > 0) {
			ps.setString(count++, moq.getMoney());
		}
		if (moq.getTime() != null && moq.getTime2() == null) {
			ps.setDate(count++, moq.getTime());
		}
		if (moq.getTime() != null && moq.getTime2() != null) {
			ps.setDate(count++, moq.getTime());			
		}
		if (moq.getTime2() != null) {	
			ps.setDate(count++, moq.getTime2());
		}
	}
	
	public List<money_out_model> getByCondition(money_out_model_Query moq) {
		List<money_out_model> molist = new ArrayList<money_out_model>();
		Connection conn = null;
		try {
			conn = db.getConn();
			final String sql = "SELECT * FROM money_out WHERE 1=1 "
					+ this.generateWhere(moq) + " ORDER BY moneyoutid";
			PreparedStatement ps = conn.prepareStatement(sql);
			this.preparedPs(moq, ps);
			System.out.println("moq   "+moq);
			System.out.println("sql   "+sql);
			System.out.println("time2 "+moq.getTime2());
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				money_out_model mo = new money_out_model(); 
				mo.setType(rs.getString("type")); 
				mo.setAccounttype(rs.getString("accounttype"));
				mo.setMoney(rs.getString("money"));
				mo.setTime(rs.getDate("time"));
				mo.setShop(rs.getString("shop"));          
				mo.setNote(rs.getString("note"));
				mo.setMoneyoutid(rs.getString("moneyoutid"));
				molist.add(mo);
			}
			System.out.println("查询成功");
			System.out.println("molist  "+molist);
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
		return molist;
	}
}
