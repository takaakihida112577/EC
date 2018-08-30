package com.internousdev.EC.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.EC.dao.CartDeleteDAO;
import com.internousdev.EC.dao.CartSelectDAO;
import com.internousdev.EC.dto.CartDTO;
import com.internousdev.EC.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class CartDeleteAction extends ActionSupport implements SessionAware{

	private String cartId;
	ArrayList<CartDTO> cartDTO;
	LoginDTO loginDTO = new LoginDTO();
	Map<String,Object> session;
	CartSelectDAO selectdao = new CartSelectDAO();
	CartAction cartAction = new CartAction();
	CartDeleteDAO deletedao = new CartDeleteDAO();
	boolean result;
	String rs;

	public String execute(){
		deletedao.cartInfoDelete(cartId);
		loginDTO = (LoginDTO) session.get("loginUser");
		cartDTO = selectdao.getCartInfo(loginDTO.getId());
		return SUCCESS;
	}

	public String getCartId(){
		return cartId;
	}

	public void setCartId(String cartId){
		this.cartId = cartId;
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
