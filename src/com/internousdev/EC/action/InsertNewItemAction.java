package com.internousdev.EC.action;

import com.internousdev.EC.dao.InsertNewItemDAO;
import com.internousdev.EC.dao.InsertNewItemImageDAO;
import com.internousdev.EC.dao.InsertNewItemTextDAO;
import com.opensymphony.xwork2.ActionSupport;

public class InsertNewItemAction extends ActionSupport{

	private String itemName;
	private String url;
	private String category;
	private String price;
	private String stock;
	private String itemTitle;
	private String itemExplan;
	private String itemMain;
	InsertNewItemImageDAO insertNewItemImageDAO = new InsertNewItemImageDAO();
	InsertNewItemTextDAO insertNewItemTextDAO = new InsertNewItemTextDAO();
	InsertNewItemDAO insertNewItemDAO = new InsertNewItemDAO();

	public String execute(){
		insertNewItemDAO.insertItemInfo(itemName, price, stock, category);
		insertNewItemImageDAO.insertItemInfo(url);
		insertNewItemTextDAO.insertItemInfo(itemTitle, itemExplan, itemMain);
		return SUCCESS;
	}

	public String getItemName(){
		return itemName;
	}

	public void setItemName(String itemName){
		this.itemName = itemName;
	}

	public String getUrl(){
		return url;
	}

	public void setUrl(String url){
		this.url = url;
	}
	public String getCategory(){
		return category;
	}

	public void setCategory(String category){
		this.category = category;
	}
	public String getPrice(){
		return price;
	}

	public void setPrice(String price){
		this.price = price;
	}
	public String getStock(){
		return stock;
	}

	public void setStock(String stock){
		this.stock = stock;
	}
	public String getItemTitle(){
		return itemTitle;
	}

	public void setItemTitle(String itemTitle){
		this.itemTitle = itemTitle;
	}
	public String getItemExplan(){
		return itemExplan;
	}

	public void setItemExplan(String itemExplan){
		this.itemExplan = itemExplan;
	}
	public String getItemMain(){
		return itemMain;
	}

	public void setItemMain(String itemMain){
		this.itemMain = itemMain;
	}
}
