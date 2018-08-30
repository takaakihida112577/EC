package com.internousdev.EC.dto;

public class UserInfoDTO {
	private int id;
	private String userName;
	private String kanaUserName;
	private String userId;
	private String password;
	private String email;
	private String phone;
	private String postal;
	private String addressKen;
	private String address;
	private int point;

	public int getId(){
		return id;
	}

	public void setId(int id){
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getKanaUserName() {
		return kanaUserName;
	}

	public void setKanaUserName(String kanaUserName) {
		this.kanaUserName = kanaUserName;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPostal() {
		return postal;
	}

	public void setPostal(String postal) {
		this.postal = postal;
	}
	public String getAddressKen() {
		return addressKen;
	}

	public void setAddressKen(String addressKen) {
		this.addressKen = addressKen;
	}
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getPoint(){
		return point;
	}

	public void setPoint(int point){
		this.point = point;
	}
}
