package com.internousdev.EC.action;

import com.internousdev.EC.dao.DeleteAllBuyItemInfoDAO;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteAllBuyItemInfoAction extends ActionSupport{

	DeleteAllBuyItemInfoDAO dao = new DeleteAllBuyItemInfoDAO();

	public String execute() {
		dao.deleteAll();
		return SUCCESS;
	}
}
