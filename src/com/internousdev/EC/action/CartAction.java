package com.internousdev.EC.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.EC.dao.CartSelectDAO;
import com.internousdev.EC.dto.CartDTO;
import com.internousdev.EC.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class CartAction extends ActionSupport implements SessionAware{

	ArrayList<CartDTO> cartDTO;
	LoginDTO loginDTO = new LoginDTO();
	Map<String,Object> session;
	CartSelectDAO dao = new CartSelectDAO();

	public String execute(){
		loginDTO = (LoginDTO) session.get("loginUser");
		session.put("loginUser", loginDTO);
		cartDTO = dao.getCartInfo(loginDTO.getId());
		return SUCCESS;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO 自動生成されたメソッド・スタブ
		this.session = session;
	}

	public ArrayList<CartDTO> getCartDTO(){
		return cartDTO;
	}

	public void setCartDTO(ArrayList<CartDTO> cartDTO){
		this.cartDTO = cartDTO;
	}
}
