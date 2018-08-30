package com.internousdev.EC.dto;

public class BuyItemInfoDTO {

	private String id;
	private String itemId;
	private String totalPrice;
	private String totalCount;
	private String userId;
	private String insertDate;
	private String itemName;
	private String url;

	public String getId(){
		return id;
	}

	public void setId(String id){
		this.id = id;
	}

	public String getItemId(){
		return itemId;
	}

	public void setItemId(String itemId){
		this.itemId = itemId;
	}

	public String getTotalPrice(){
		return totalPrice;
	}

	public void setTotalPrice(String totalPrice){
		this.totalPrice = totalPrice;
	}

	public String getTotalCount(){
		return totalCount;
	}

	public void setTotalCount(String totalCount){
		this.totalCount = totalCount;
	}

	public String getUserId(){
		return userId;
	}

	public void setUserId(String userId){
		this.userId = userId;
	}

	public String getInsertDate(){
		return insertDate;
	}

	public void setInsertDate(String insertDate){
		this.insertDate = insertDate;
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
}
