package com.internousdev.EC.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.EC.dao.CartInsertDAO;
import com.internousdev.EC.dto.ItemInfoDTO;
import com.internousdev.EC.dto.LoginDTO;
import com.internousdev.EC.dto.ReviewDTO;
import com.internousdev.EC.dto.UserInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemAction extends ActionSupport implements SessionAware{

	private int stock;
	private int totalPrice;
	private String select;
	CartInsertDAO dao = new CartInsertDAO();
	Map<String,Object> session;
	ItemInfoDTO itemInfoDTO = new ItemInfoDTO();
	UserInfoDTO userInfoDTO = new UserInfoDTO();
	ArrayList<ReviewDTO> reviewDTO;
	@SuppressWarnings("unchecked")
	public String execute(){
		if(select.equals("0")){
			totalPrice = stock * (Integer.parseInt(session.get("itemPrice").toString()));
			session.put("totalprice", totalPrice);
			session.put("stock",stock);
			return SUCCESS;
		}else{
			itemInfoDTO = (ItemInfoDTO) session.get("buyItemInfo");
			reviewDTO = (ArrayList<ReviewDTO>) session.get("reviewDTO");
			dao.cartInsert(((LoginDTO) session.get("loginUser")).getId(),itemInfoDTO.getId(), session.get("itemName").toString(), session.get("itemPrice").toString(), stock);
			return ERROR;
		}
	}

	public int getStock(){
		return stock;
	}

	public void setStock(int stock){
		this.stock = stock;
	}

	public int getTotalPrice(){
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice){
		this.totalPrice = totalPrice;
	}

	public String getSelect(){
		return select;
	}

	public void setSelect(String select){
		this.select = select;
	}

	public ItemInfoDTO getItemInfoDTO(){
		return itemInfoDTO;
	}

	public void setItemInfoDTO(ItemInfoDTO itemInfoDTO){
		this.itemInfoDTO = itemInfoDTO;
	}

	public ArrayList<ReviewDTO> getReviewDTO(){
		return reviewDTO;
	}

	public void setReviewDTO(ArrayList<ReviewDTO> reviewDTO){
		this.reviewDTO = reviewDTO;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO 自動生成されたメソッド・スタブ
		this.session = session;
	}
}