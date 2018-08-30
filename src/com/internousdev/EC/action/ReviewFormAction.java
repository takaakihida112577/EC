package com.internousdev.EC.action;

import com.opensymphony.xwork2.ActionSupport;

public class ReviewFormAction extends ActionSupport{

	private String itemId;

	public String execute(){
		return SUCCESS;
	}

	public String getItemId(){
		return itemId;
	}

	public void setItemId(String itemId){
		this.itemId = itemId;
	}
}
