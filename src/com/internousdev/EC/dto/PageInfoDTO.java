package com.internousdev.EC.dto;

import java.util.ArrayList;
import java.util.List;

public class PageInfoDTO {

	private int totalPage;
	private int currentPageNo;
	private int totalRecord;
	private int startRecordNo;
	private int endRecordNo;
	private List<Integer> pageList = new ArrayList<Integer>();
	private List<BuyItemInfoDTO> buyItemInfoDTOList;
	private List<ItemInfoDTO> itemInfoDTOList;
	private boolean prevPage;
	private boolean nextPage;
	private int prevPageNo;
	private int nextPageNo;

	public int getTotalPage(){
		return totalPage;
	}

	public void setTotalPage(int totalPage){
		this.totalPage = totalPage;
	}

	public int getCurrentPageNo(){
		return currentPageNo;
	}

	public void setCurrentPageNo(int currentPageNo){
		this.currentPageNo = currentPageNo;
	}

	public int getTotalRecord(){
		return totalRecord;
	}

	public void setTotalRecord(int totalRecord){
		this.totalRecord = totalRecord;
	}

	public int getStartRecordNo(){
		return startRecordNo;
	}

	public void setStartRecordNo(int startRecordNo){
		this.startRecordNo = startRecordNo;
	}

	public int getEndRecordNo(){
		return endRecordNo;
	}

	public void setEndRecordNo(int endRecordNo){
		this.endRecordNo = endRecordNo;
	}

	public List<Integer> getPageList(){
		return pageList;
	}

	public void setPageList(List<Integer> pageList){
		this.pageList = pageList;
	}

	public List<BuyItemInfoDTO> getBuyItemInfoDTOList(){
		return buyItemInfoDTOList;
	}

	public void setBuyItemInfoDTOList(List<BuyItemInfoDTO> buyItemInfoDTOList){
		this.buyItemInfoDTOList = buyItemInfoDTOList;
	}

	public List<ItemInfoDTO> getItemInfoDTOList(){
		return itemInfoDTOList;
	}

	public void setItemInfoDTOList(List<ItemInfoDTO> itemInfoDTOList){
		this.itemInfoDTOList = itemInfoDTOList;
	}

	public boolean getPrevPage(){
		return prevPage;
	}

	public void setPrevPage(boolean prevPage){
		this.prevPage = prevPage;
	}

	public boolean getNextPage(){
		return nextPage;
	}

	public void setNextPage(boolean nextPage){
		this.nextPage = nextPage;
	}

	public int getPrevPageNo(){
		return prevPageNo;
	}

	public void setPrevPageNo(int prevPageNo){
		this.prevPageNo = prevPageNo;
	}

	public int getNextPageNo(){
		return nextPageNo;
	}

	public void setNextPageNo(int nextPageNo){
		this.nextPageNo = nextPageNo;
	}
}
