package com.internousdev.EC.dto;

public class ReviewDTO {

	private int id;
	private String item_id;
	private String title;
	private String reviewText;
	private String reviewDate;
	private String star;
	private int visitCount;

	public int getId(){
		return id;
	}

	public void setId(int id){
		this.id = id;
	}

	public String getItem_id(){
		return item_id;
	}

	public void setItem_id(String item_id){
		this.item_id = item_id;
	}

	public String getTitle(){
		return title;
	}

	public void setTitle(String title){
		this.title = title;
	}

	public String getReviewText(){
		return reviewText;
	}

	public void setReviewText(String reviewText){
		this.reviewText = reviewText;
	}

	public String getReviewDate(){
		return reviewDate;
	}

	public void setReviewDate(String reviewDate){
		this.reviewDate = reviewDate;
	}

	public String getStar(){
		return star;
	}

	public void setStar(String star){
		this.star = star;
	}

	public int getVisitCount(){
		return visitCount;
	}

	public void setVisitCount(int visitCount){
		this.visitCount = visitCount;
	}
}
