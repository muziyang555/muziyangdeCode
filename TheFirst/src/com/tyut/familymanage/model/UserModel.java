package com.tyut.familymanage.model;
//用户实体类
public class UserModel {
	private String UserName;
	private String Password;
	private String md5Password;
	private String Sex;
	private String Phone;
	private String Email;
	private String Province;
	private String City;
	private String Area;
	
	
	public String getSex() {
		return Sex;
	}
	public void setSex(String sex) {
		Sex = sex;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		this.Email = email;
	}
	public String getProvince() {
		return Province;
	}
	public void setProvince(String province) {
		Province = province;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getArea() {
		return Area;
	}
	public void setArea(String area) {
		Area = area;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getMd5Password() {
		return md5Password;
	}
	public void setMd5Password(String md5Password) {
		this.md5Password = md5Password;
	}
	@Override
	public String toString() {
		return "UserModel [UserName=" + UserName + ", Password=" + Password
				+ ", md5Password=" + md5Password + ", Sex=" + Sex + ", Phone="
				+ Phone + ", email=" + Email + ", Province=" + Province
				+ ", City=" + City + ", Area=" + Area + "]";
	}
	
	
	
	
}
