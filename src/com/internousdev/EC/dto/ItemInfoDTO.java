package com.internousdev.EC.dto;

public class ItemInfoDTO {

	private String id;
	private String itemName;
	private String itemPrice;
	private String url;
	private String itemTitle;
	private String itemExplan;
	private String itemMain;

	public String getId(){
		return id;
	}

	public void setId(String id){
		this.id = id;
	}

	public String getItemName(){
		return itemName;
	}

	public void setItemName(String itemName){
		this.itemName = itemName;
	}

	public String getItemPrice(){
		return itemPrice;
	}

	public void setItemPrice(String itemPrice){
		this.itemPrice = itemPrice;
	}

	public String getUrl(){
		return url;
	}

	public void setUrl(String url){
		this.url = url;
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
