package com.tyut.familymanage.action;


import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.tyut.familymanage.dao.UserDao;
import com.tyut.familymanage.model.UserModel;
import com.tyut.familymanage.handle.EncryptUtil;

public class UserAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserModel user;
	public UserModel getUser() {
		return user;
	}
	public void setUser(UserModel user) {
		this.user = user;
	}
	//�û�ע��
	public String add() throws Exception{
		UserDao dao = new UserDao();
		String key = "9ba45bfd500642328ec03ad8ef1b6e75";
		EncryptUtil des = new EncryptUtil(key, "utf-8");
		user.setPassword(des.encode(user.getPassword()));
		dao.user_add(user);
		return "success";
	}
	//�û���¼
	public String login() throws Exception{
		UserDao dao = new UserDao();
		String key = "9ba45bfd500642328ec03ad8ef1b6e75";
		EncryptUtil des = new EncryptUtil(key, "utf-8");
		user.setPassword(des.encode(user.getPassword()));
		dao.user_login(user);
		return "login";
	}
	public String toLogin()throws Exception{
		  UserDao dao = new UserDao();
			String key = "9ba45bfd500642328ec03ad8ef1b6e75";
			EncryptUtil des = new EncryptUtil(key, "utf-8");
			user.setPassword(des.encode(user.getPassword()));
		  boolean b = dao.validate(user);
		  if(b==true)
		      return "toLogin";
		  else
			  return "toLoginFalse";
	  }
	//�û����������޸�����
	public String UpdatePassword() throws Exception{
		UserDao dao = new UserDao();
		String key = "9ba45bfd500642328ec03ad8ef1b6e75";
		EncryptUtil des = new EncryptUtil(key, "utf-8");
		user.setPassword(des.encode(user.getPassword()));
		dao.UpdatePassword(user);
		return "UpdateSuccess";
	}
	
	private List<UserModel> userList;
	public List<UserModel> getUserList() {
		return userList;
	}
	public void setUserList(List<UserModel> userList) {
		this.userList = userList;
	}
	//��ʾ�û�������Ϣ
		public String view() throws Exception{
			UserDao dao = new UserDao();
			userList=dao.getView();
			return "toList";
		}
}	
