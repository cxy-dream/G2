package com.bean;

public class Users {
	private String username;
	private int uid;
	private String sex;
	private String brithday;
	private String phone;
	private int age;
	@Override
	public String toString() {
		return "Users [username=" + username + ", uid=" + uid + ", sex=" + sex + ", brithday=" + brithday + ", phone="
				+ phone + ", age=" + age + "]";
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBrithday() {
		return brithday;
	}

	public void setBrithday(String brithday) {
		this.brithday = brithday;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Users(String username, int uid, String sex, String brithday, String phone, int age) {
		super();
		this.username = username;
		this.uid = uid;
		this.sex = sex;
		this.brithday = brithday;
		this.phone = phone;
		this.age = age;
	}
	public Users() {
		super();
	}

}
