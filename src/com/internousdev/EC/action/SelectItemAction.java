package com.internousdev.EC.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.EC.dao.SelectReviewDAO;
import com.internousdev.EC.dao.selectItemDAO;
import com.internousdev.EC.dto.ItemInfoDTO;
import com.internousdev.EC.dto.ReviewDTO;
import com.opensymphony.xwork2.ActionSupport;

public class SelectItemAction extends ActionSupport implements SessionAware{

	private String itemId;
	selectItemDAO dao = new selectItemDAO();
	SelectReviewDAO selectReviewDAO = new SelectReviewDAO();
	ItemInfoDTO itemInfoDTO = new ItemInfoDTO();
	ArrayList<ReviewDTO> reviewDTO;
	ArrayList<ItemInfoDTO> historyDTOList;
	Map<String,Object> session;


	public String execute(){
		itemInfoDTO = dao.getSelectItemInfo(itemId);

		reviewDTO = selectReviewDAO.getReview(itemId);
		session.put("reviewDTO", reviewDTO);
		session.put("buyItemInfo", itemInfoDTO);
		session.put("itemPrice", itemInfoDTO.getItemPrice());
		session.put("itemName", itemInfoDTO.getItemName());

		//履歴保存
		return SUCCESS;
	}

	public String getItemId(){
		return itemId;
	}

	public void setItemId(String itemId){
		this.itemId = itemId;
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
		this.session = session;
	}
}
