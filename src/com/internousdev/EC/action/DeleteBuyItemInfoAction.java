package com.internousdev.EC.action;

import com.internousdev.EC.dao.DeleteBuyItemInfoDAO;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteBuyItemInfoAction extends ActionSupport{

	private String id;
	DeleteBuyItemInfoDAO dao = new DeleteBuyItemInfoDAO();

	public String execute() {
		dao.delete(id);
		return SUCCESS;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
}
