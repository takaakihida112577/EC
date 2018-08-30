package com.internousdev.EC.action;

import com.internousdev.EC.dao.ReviewInsertDAO;
import com.opensymphony.xwork2.ActionSupport;

public class ReviewInsertAction extends ActionSupport{

	private String itemId;
	private String reviewTitle;
	private String reviewText;
	private String star;
	ReviewInsertDAO dao = new ReviewInsertDAO();

	public String execute(){
		dao.insertReview(itemId, reviewTitle, reviewText, star);
		return SUCCESS;
	}

	public String getItemId(){
		return itemId;
	}

	public void setItemId(String itemId){
		this.itemId = itemId;
	}

	public String getReviewTitle(){
		return reviewTitle;
	}

	public void setReviewTitle(String reviewTitle){
		this.reviewTitle = reviewTitle;
	}

	public String getReviewText(){
		return reviewText;
	}

	public void setReviewText(String reviewText){
		this.reviewText = reviewText;
	}

	public String getStar(){
		return star;
	}

	public void setStar(String star){
		this.star = star;
	}
}
