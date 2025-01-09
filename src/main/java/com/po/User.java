package com.po;

public class User {
	private Integer number;
	private String password;
	private Integer role_id;
	private String phone;
	private String createdate;
	private String username;
	private String remark;
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Integer getRole_id() {
		return role_id;
	}
	public void setRole_id(Integer role_id) {
		this.role_id = role_id;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getBreatedate() {
		return createdate;
	}
	public void setBreatedate(String breatedate) {
		this.createdate = breatedate;
	}
	public String getCreatedate() {
		return createdate;
	}
	public void setCreatedate(String createdate) {
		this.createdate = createdate;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	@Override
	public String toString() {
		// TODO 自动生成的方法存根
		return number + password + role_id + phone + createdate + username + remark + "<br>";
	}
}
