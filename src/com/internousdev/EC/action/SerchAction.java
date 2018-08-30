package com.internousdev.EC.action;

import java.util.ArrayList;

import com.internousdev.EC.dao.selectItemDAO;
import com.internousdev.EC.dto.ItemInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class SerchAction extends ActionSupport{

	private String serchCategory;
	private String serchWord;
	selectItemDAO dao = new selectItemDAO();
	ArrayList<ItemInfoDTO> itemInfoDTO;

	public String execute() {
		if(serchCategory.equals("all")) {
			itemInfoDTO=dao.getSerchNonCategory(serchWord);
		}else {
			itemInfoDTO=dao.getSerchCategory(serchCategory, serchWord);
		}
		return SUCCESS;
	}

	public String getSerchCategory() {
		return serchCategory;
	}

	public void setSerchCategory(String serchCategory) {
		this.serchCategory = serchCategory;
	}

	public String getSerchWord() {
		return serchWord;
	}

	public void setSerchWord(String serchWord) {
		this.serchWord = serchWord;
	}

	public ArrayList<ItemInfoDTO> getItemInfoDTO(){
		return itemInfoDTO;
	}

	public void setItemInfoDTO(ArrayList<ItemInfoDTO> itemInfoDTO) {
		this.itemInfoDTO = itemInfoDTO;
	}
}
