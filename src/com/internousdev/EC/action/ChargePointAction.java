package com.internousdev.EC.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.EC.dao.PointInsertDAO;
import com.internousdev.EC.dto.LoginDTO;
import com.internousdev.EC.dto.UserInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ChargePointAction extends ActionSupport implements SessionAware{

	private int chargePoint;
	private String id;
	PointInsertDAO pointInsertDAO = new PointInsertDAO();
	UserInfoDTO userInfoDTO = new UserInfoDTO();
	LoginDTO loginDTO = new LoginDTO();
	Map<String,Object> session;

	public String execute(){
		userInfoDTO = (UserInfoDTO) session.get("myPageInfo");
		loginDTO = (LoginDTO) session.get("loginUser");
		if(chargePoint > 0){
			pointInsertDAO.loginInsertPoint(chargePoint+userInfoDTO.getPoint(), id);
			pointInsertDAO.userInsertPoint(chargePoint+userInfoDTO.getPoint(), id);
			userInfoDTO.setPoint(chargePoint+userInfoDTO.getPoint());
			loginDTO.setPoint(userInfoDTO.getPoint());
		}
		return SUCCESS;
	}

	public int getChargePoint(){
		return chargePoint;
	}

	public void setChargePoint(int chargePoint){
		this.chargePoint = chargePoint;
	}

	public String getId(){
		return id;
	}

	public void setId(String id){
		this.id = id;
	}

	public UserInfoDTO getUserInfoDTO(){
		return userInfoDTO;
	}

	public void setUserInfoDTO(UserInfoDTO userInfoDTO){
		this.userInfoDTO = userInfoDTO;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO 自動生成されたメソッド・スタブ
		this.session = session;
	}
}