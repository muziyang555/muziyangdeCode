package com.tyut.familymanage.action;

import java.util.List;

import com.tyut.familymanage.model.money_in_model;
import com.tyut.familymanage.model.money_out_model_Query;
import com.opensymphony.xwork2.ActionSupport;
import com.tyut.familymanage.dao.money_in_dao;
import com.tyut.familymanage.dao.money_out_dao;

public class money_in_action extends ActionSupport {
	
	private String[] mitype = new String[]{"��ѡ��","����","��Ϣ","Ͷ��"};
	private String[] miaccounttype = new String[]{"��ѡ��","�ֽ�","���п�"};
	
	public String[] getMitype() {
		return mitype;
	}

	public void setMitype(String[] mitype) {
		this.mitype = mitype;
	}

	public String[] getMiaccounttype() {
		return miaccounttype;
	}

	public void setMiaccounttype(String[] miaccounttype) {
		this.miaccounttype = miaccounttype;
	}
	private money_in_model mi;

	public money_in_model getMi() {
		return mi;
	}

	public void setMi(money_in_model mi) {
		this.mi = mi;
	}
private List<money_in_model> miList;
	
	
	public List<money_in_model> getMiList() {
	return miList;
}

public void setMiList(List<money_in_model> miList) {
	this.miList = miList;
}

//�������
	public String add() throws Exception{
		money_in_dao dao = new money_in_dao();
		dao.money_in_add(mi);
		miList=dao.getInView();
		return "toList";
	}
	//��ʾȫ��֧��
	public String view() throws Exception{
		money_in_dao dao = new money_in_dao();
		miList=dao.getInView();
		return "toList";
	}
	//ɾ��֧��
	public String delete() throws Exception{
		money_in_dao dao = new money_in_dao();
		dao.money_in_delete(mi.getMoneyinid());
		miList=dao.getInView();
		return "toList";
	}
	//֧������
	public String toupdate() throws Exception{
		money_in_dao dao = new money_in_dao();			
		mi=dao.getSingle(mi.getMoneyinid());
		return "toUpdate";
		}
	//�޸�֧��
		public String update() throws Exception{
			money_in_dao dao = new money_in_dao();
			dao.money_in_update(mi);
			miList=dao.getInView();
			return "toList";
		}
private money_in_model miq;
		
		
		public money_in_model getMiq() {
	return miq;
}

public void setMiq(money_in_model miq) {
	this.miq = miq;
}

		//��ѯ֧��
		public String query() throws Exception{
			money_in_dao dao = new money_in_dao();
			miList=dao.getByCondition(miq);
			return "toList";
		}
		
}
