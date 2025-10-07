package com.model;

public class Data {
	private Integer userId;
	private String fullName;
	private String email;
	private String password;
	private String dob;
	private Long phoneno;
	private String gender;
	
	
	
	public Data() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public Data(Integer userId, String fullName, String email, String password, String dob, Long phoneno,
			String gender) {
		super();
		this.userId = userId;
		this.fullName = fullName;
		this.email = email;
		this.password = password;
		this.dob = dob;
		this.phoneno = phoneno;
		this.gender = gender;
	}


	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public Long getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(Long phoneno) {
		this.phoneno = phoneno;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
	
}
