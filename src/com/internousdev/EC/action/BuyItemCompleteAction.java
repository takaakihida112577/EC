package com.internousdev.EC.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.EC.dao.BuyItemInsertDAO;
import com.internousdev.EC.dao.CartDeleteDAO;
import com.internousdev.EC.dao.PointInsertDAO;
import com.internousdev.EC.dto.ItemInfoDTO;
import com.internousdev.EC.dto.LoginDTO;
import com.internousdev.EC.dto.UserInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemCompleteAction extends ActionSupport implements SessionAware{


	BuyItemInsertDAO dao = new BuyItemInsertDAO();
	Map<String,Object> session;
	LoginDTO loginDTO = new LoginDTO();
	ItemInfoDTO itemInfoDTO = new ItemInfoDTO();
	CartDeleteDAO deletedao = new CartDeleteDAO();
	PointInsertDAO pointInsertDAO = new PointInsertDAO();
	UserInfoDTO userInfoDTO = new UserInfoDTO();
	private String totalPrice;
	private String stock;
	private String cartId;

	public String execute(){
		loginDTO = (LoginDTO) session.get("loginUser");
		userInfoDTO = (UserInfoDTO) session.get("myPageInfo");
		itemInfoDTO = (ItemInfoDTO) session.get("buyItemInfo");
		totalPrice = session.get("totalprice").toString();
		stock = session.get("stock").toString();

		//購入金額とポイントを比較
		if(loginDTO.getPoint() < Integer.parseInt(totalPrice)){
			return ERROR;
		}else{
			dao.insertBuyItem(itemInfoDTO.getId(), totalPrice, stock, loginDTO.getId(), totalPrice);
			if(session.containsKey("cartId")){
				cartId = session.get("cartId").toString();
				deletedao.cartInfoDelete(cartId);
			}
			pointInsertDAO.loginInsertPoint(loginDTO.getPoint()-Integer.parseInt(totalPrice), loginDTO.getId());
			pointInsertDAO.userInsertPoint(loginDTO.getPoint()-Integer.parseInt(totalPrice), loginDTO.getId());
			loginDTO.setPoint(loginDTO.getPoint()-Integer.parseInt(totalPrice));
			userInfoDTO.setPoint(loginDTO.getPoint()-Integer.parseInt(totalPrice));
			return SUCCESS;
		}
	}

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO 自動生成されたメソッド・スタブ
		this.session = session;
	}

	public String getTotalPrice(){
		return totalPrice;
	}

	public void setTotalPrice(String totalPrice){
		this.totalPrice = totalPrice;
	}

	public String getStock(){
		return stock;
	}

	public void setStock(String stock){
		this.stock = stock;
	}

	public String getCartId(){
		return cartId;
	}

	public void setCartId(String cartId){
		this.cartId = cartId;
	}
}
