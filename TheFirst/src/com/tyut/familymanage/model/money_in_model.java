package com.tyut.familymanage.model;

import java.sql.Date;

public class money_in_model {
	private String moneyinid;
	private String type;
	private String accounttype;
	private String money;
	private Date time;
	private String  note;
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getAccounttype() {
		return accounttype;
	}
	public void setAccounttype(String accounttype) {
		this.accounttype = accounttype;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	
	public String getMoneyinid() {
		return moneyinid;
	}
	public void setMoneyinid(String moneyinid) {
		this.moneyinid = moneyinid;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	@Override
	public String toString() {
		return "money_in_model [moneyinid=" + moneyinid + ", type=" + type
				+ ", accounttype=" + accounttype + ", money=" + money
				+ ", time=" + time + ", note=" + note + "]";
	}
	
	
	
}
