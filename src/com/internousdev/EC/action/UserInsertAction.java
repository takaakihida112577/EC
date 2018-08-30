package com.internousdev.EC.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.EC.dto.CreateUserDTO;
import com.opensymphony.xwork2.ActionSupport;

public class UserInsertAction extends ActionSupport implements SessionAware{

	private String name;
	private String kanaName;
	private String lastName;
	private String firstName;
	private String kanaLastName;
	private String kanaFirstName;
	private String userId;
	private String password;
	private String email;
	private String phone;
	private String postal;
	private String addressKen;
	private String address;
	private String changeFlg;

	CreateUserDTO dto = new CreateUserDTO();
	Map<String,Object> session;

	public String execute() {
		System.out.println(name);
		System.out.println(kanaName);
		System.out.println(lastName);
		System.out.println(firstName);
		if(!(name==null)) {
			dto.setName(name);
		}else {
			dto.setLastName(lastName);
			dto.setFirstName(firstName);
		}

		if(!(kanaName==null)) {
			dto.setKanaName(name);
		}else {
			dto.setKanaLastName(kanaLastName);
			dto.setKanaFirstName(kanaFirstName);
		}
		dto.setUserId(userId);
		dto.setPassword(password);
		dto.setEmail(email);
		dto.setPhone(phone);
		dto.setPostal(postal);
		dto.setAddressKen(addressKen);
		dto.setAddress(address);
		session.put("changeFlg", changeFlg);
		session.put("createUserDTO", dto);
		return SUCCESS;
	}


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getKanaName() {
		return kanaName;
	}

	public void setKanaName(String kanaName) {
		this.kanaName = kanaName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getKanaLastName() {
		return kanaLastName;
	}

	public void setKanaLastName(String kanaLastName) {
		this.kanaLastName = kanaLastName;
	}

	public String getKanaFirstName() {
		return kanaFirstName;
	}

	public void setKanaFirstName(String kanaFirstName) {
		this.kanaFirstName = kanaFirstName;
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

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO 自動生成されたメソッド・スタブ
		this.session = session;
	}

	public String getChangeFlg() {
		return changeFlg;
	}

	public void setChangeFlg(String changeFlg) {
		this.changeFlg = changeFlg;
	}
}