package com.tyut.familymanage.model;

import java.sql.Date;

public class money_out_model {
	private String moneyoutid;
	private String type;
	private String accounttype;
	private String money;
	private Date time;
	private  String shop;
	private String  note;
	private Date time2;
	private String sum;
	
	public String getSum() {
		return sum;
	}
	public void setSum(String sum) {
		this.sum = sum;
	}
	public Date getTime2() {
		return time2;
	}
	public void setTime2(Date time2) {
		this.time2 = time2;
	}
	public String getMoneyoutid() {
		return moneyoutid;
	}
	public void setMoneyoutid(String moneyoutid) {
		this.moneyoutid = moneyoutid;
	}
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
	public String getShop() {
		return shop;
	}
	public void setShop(String shop) {
		this.shop = shop;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	@Override
	public String toString() {
		return "money_out_model [moneyoutid=" + moneyoutid + ", type=" + type
				+ ", accounttype=" + accounttype + ", money=" + money
				+ ", time=" + time + ", shop=" + shop + ", note=" + note
				+ ", time2=" + time2 + ", sum=" + sum + "]";
	}



	
	
	
	
}
