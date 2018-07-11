package com.tyut.familymanage.action;

import java.util.List;

import com.tyut.familymanage.model.money_out_model;
import com.tyut.familymanage.model.money_out_model_Query;
import com.opensymphony.xwork2.ActionSupport;
import com.tyut.familymanage.dao.money_out_dao;

public class money_out_action extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String[] motype = new String[]{"请选择","食品","衣服","交通","医疗"};
	
	public String[] getMotype() {
		return motype;
	}

	public void setMotype(String[] motype) {
		this.motype = motype;
	}
	private String[] moaccounttype = new String[]{"请选择","现金","银行卡"};
	
	
	public String[] getMoaccounttype() {
		return moaccounttype;
	}

	public void setMoaccounttype(String[] moaccounttype) {
		this.moaccounttype = moaccounttype;
	}
	private money_out_model mo;
	
	public money_out_model getMo() {
		return mo;
	}

	public void setMo(money_out_model mo) {
		this.mo = mo;
	}
	private List<money_out_model> moList;
	
	public List<money_out_model> getMoList() {
		return moList;
	}

	public void setMoList(List<money_out_model> moList) {
		this.moList = moList;
	}



	//支出添加
	public String add() throws Exception{
		money_out_dao dao = new money_out_dao();
		dao.money_out_add(mo);
		moList=dao.getView();
		return "toList";
	}
	//显示全部支出
	public String view() throws Exception{
		money_out_dao dao = new money_out_dao();
		moList=dao.getView();
		return "toList";
	}
	//删除支出
	public String delete() throws Exception{
		money_out_dao dao = new money_out_dao();
		dao.money_out_delete(mo.getMoneyoutid());
		moList=dao.getView();
		return "toList";
	}
	//支出详情
		public String toupdate() throws Exception{
			money_out_dao dao = new money_out_dao();			
			mo=dao.getSingle(mo.getMoneyoutid());
			return "toUpdate";
			}
	//修改支出
		public String update() throws Exception{
			money_out_dao dao = new money_out_dao();
			dao.money_out_update(mo);
			moList=dao.getView();
			return "toList";
		}
		private money_out_model_Query moq;
		
		public money_out_model_Query getMoq() {
			return moq;
		}

		public void setMoq(money_out_model_Query moq) {
			this.moq = moq;
		}

		//查询支出
		public String query() throws Exception{
			money_out_dao dao = new money_out_dao();
			moList=dao.getByCondition(moq);
			return "toList";
		}
}
