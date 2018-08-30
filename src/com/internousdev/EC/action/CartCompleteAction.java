package com.internousdev.EC.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.EC.dao.CartSelectDAO;
import com.internousdev.EC.dto.CartDTO;
import com.internousdev.EC.dto.ItemInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class CartCompleteAction extends ActionSupport implements SessionAware{

	private String cartId;
	private String stock;
	private int totalPrice;
	CartSelectDAO cartSelectDAO = new CartSelectDAO();
	CartDTO cartDTO = new CartDTO();
	ItemInfoDTO itemInfoDTO = new ItemInfoDTO();
	Map<String,Object> session;

	public String execute(){
		cartDTO = cartSelectDAO.getBuyCartInfo(cartId);
		itemInfoDTO.setItemName(cartDTO.getItemName());
		itemInfoDTO.setId(cartDTO.getItemId());
		itemInfoDTO.setUrl(cartDTO.getUrl());
		itemInfoDTO.setItemPrice(cartDTO.getItemPrice());
		session.put("buyItemInfo", itemInfoDTO);
		stock = cartDTO.getItemStock();
		totalPrice = (Integer.parseInt(stock) * Integer.parseInt(cartDTO.getItemPrice()));
		session.put("totalprice", totalPrice);
		session.put("stock", stock);
		session.put("cartId", cartId);
		return SUCCESS;
	}

	public String getCartId(){
		return cartId;
	}

	public void setCartId(String cartId){
		this.cartId = cartId;
	}

	public String getStock(){
		return stock;
	}

	public void setStock(String stock){
		this.stock = stock;
	}

	public int getTotalPrice(){
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice){
		this.totalPrice = totalPrice;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO 自動生成されたメソッド・スタブ
		this.session = session;
	}
}