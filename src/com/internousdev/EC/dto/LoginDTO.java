package com.internousdev.EC.dto;

public class LoginDTO {
	private String id;
	private String loginId;
	private String loginPassword;
	private String userName;
	private int point;
	private boolean loginFlg = false;


	public String getId(){
		return id;
	}

	public void setId(String id){
		this.id = id;
	}

	public String getLoginId(){
		return loginId;
	}

	public void setLoginId(String loginId){
		this.loginId = loginId;
	}

	public String getLoginPassword(){
		return loginPassword;
	}

	public void setLoginPassword(String loginPassword){
		this.loginPassword = loginPassword;
	}

	public String getUserName(){
		return userName;
	}

	public void setUserName(String userName){
		this.userName = userName;
	}

	public boolean getLoginFlg(){
		return loginFlg;
	}

	public void setLoginFlg(boolean loginFlg){
		this.loginFlg = loginFlg;
	}

	public int getPoint(){
		return point;
	}

	public void setPoint(int point){
		this.point= point;
	}
}
