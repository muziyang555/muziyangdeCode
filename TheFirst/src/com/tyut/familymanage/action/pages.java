package com.tyut.familymanage.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.tyut.familymanage.dao.UserDao;
import com.tyut.familymanage.dao.money_out_dao;
import com.tyut.familymanage.dao.money_in_dao;
import com.tyut.familymanage.model.UserModel;
import com.tyut.familymanage.model.money_in_model;
import com.tyut.familymanage.model.money_out_model;

public class pages extends ActionSupport {
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
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
private List<money_in_model> miList;
	
	public List<money_in_model> getMiList() {
	return miList;
}

public void setMiList(List<money_in_model> miList) {
	this.miList = miList;
}

	public void setMoList(List<money_out_model> moList) {
		this.moList = moList;
	}
	
	private List<UserModel> userList;	
	
	public List<UserModel> getUserList() {
		return userList;
	}

	public void setUserList(List<UserModel> userList) {
		this.userList = userList;
	}

	public String index() throws Exception{
		return SUCCESS;
	}
	//跳转支出界面
	public String go_money_out() throws Exception{
		money_out_dao dao = new money_out_dao();
		moList=dao.getView();
		return "toList";
	}
		//跳转收入界面
	public String go_money_in() throws Exception{
		money_in_dao dao = new money_in_dao();
		miList=dao.getInView();
		return "toList";
	}	
	public String go_money_tools() throws Exception{
		return SUCCESS;
	}
	public String go_money_fenxi() throws Exception{
		money_out_dao dao = new money_out_dao();
		moList=dao.getView();
		money_in_dao dao1 = new money_in_dao();
		miList=dao1.getInView();
		return SUCCESS;
	}
	public String go_money_number() throws Exception{
		UserDao dao = new UserDao();
		userList=dao.getView();
		return "toList";
	}
}
