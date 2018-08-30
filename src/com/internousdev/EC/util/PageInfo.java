package com.internousdev.EC.util;

import java.util.ArrayList;
import java.util.List;

import com.internousdev.EC.dto.BuyItemInfoDTO;
import com.internousdev.EC.dto.ItemInfoDTO;
import com.internousdev.EC.dto.PageInfoDTO;

public class PageInfo {

	//購入履歴のページング

	public PageInfoDTO init(List<BuyItemInfoDTO> list,int pageSize){
		PageInfoDTO pageInfoDTO = new PageInfoDTO();

		pageInfoDTO.setTotalPage((int)(list.size()/pageSize)+1);
		pageInfoDTO.setCurrentPageNo(1);
		pageInfoDTO.setTotalRecord(list.size()-1);
		pageInfoDTO.setStartRecordNo(pageSize*(pageInfoDTO.getCurrentPageNo()-1));
		pageInfoDTO.setEndRecordNo(pageInfoDTO.getStartRecordNo()+(pageSize-1));
		System.out.println(pageInfoDTO.getStartRecordNo());
		System.out.println(pageInfoDTO.getEndRecordNo());
		List<Integer> pageList = new ArrayList<Integer>();

		if(list.size()%pageSize==0){
			pageInfoDTO.setTotalPage((int)(list.size()/pageSize));
		}

		for(int pageNumber=1;pageNumber<=pageInfoDTO.getTotalPage();pageNumber++){
			pageList.add(pageNumber);
		}
		pageInfoDTO.setPageList(pageList);

		List<BuyItemInfoDTO> buyItemInfoDTOList = new ArrayList<BuyItemInfoDTO>();
		for(int pageNumberList=pageInfoDTO.getStartRecordNo();pageNumberList<=pageInfoDTO.getEndRecordNo();pageNumberList++){
			buyItemInfoDTOList.add(list.get(pageNumberList));
			if((list.size()-1) == pageNumberList){
				break;
			}
		}
		pageInfoDTO.setBuyItemInfoDTOList(buyItemInfoDTOList);

		if((pageInfoDTO.getStartRecordNo()-1)<=0){
			pageInfoDTO.setPrevPage(false);
		}else{
			pageInfoDTO.setPrevPage(true);
			pageInfoDTO.setNextPageNo(pageInfoDTO.getCurrentPageNo()-1);
		}

		if(pageInfoDTO.getTotalRecord() < (pageInfoDTO.getEndRecordNo()+pageSize)){
			pageInfoDTO.setNextPage(false);
		}else{
			pageInfoDTO.setNextPage(true);
			pageInfoDTO.setNextPageNo(pageInfoDTO.getCurrentPageNo()+1);
		}
		return pageInfoDTO;
	}

	public PageInfoDTO getPage(List<BuyItemInfoDTO> list,int pageSize,String pageNo){
		PageInfoDTO pageInfoDTO = new PageInfoDTO();

		pageInfoDTO.setTotalPage((int)(list.size()/pageSize)+1);
		pageInfoDTO.setCurrentPageNo(Integer.parseInt(pageNo));
		pageInfoDTO.setTotalRecord(list.size()-1);
		pageInfoDTO.setStartRecordNo(pageSize*(pageInfoDTO.getCurrentPageNo()-1));
		pageInfoDTO.setEndRecordNo(pageInfoDTO.getStartRecordNo()+(pageSize-1));
		System.out.println(Integer.parseInt(pageNo));
		System.out.println(pageInfoDTO.getStartRecordNo());
		System.out.println(pageInfoDTO.getEndRecordNo());
		if(list.size()%pageSize==0){
			pageInfoDTO.setTotalPage((int)(list.size()/pageSize));
		}
		List<Integer> pageList = new ArrayList<Integer>();
		for(int pageNumber=1;pageNumber<=pageInfoDTO.getTotalPage();pageNumber++){
			pageList.add(pageNumber);
		}
		pageInfoDTO.setPageList(pageList);

		List<BuyItemInfoDTO> buyItemInfoDTOList = new ArrayList<BuyItemInfoDTO>();
		for(int pageNumberList=pageInfoDTO.getStartRecordNo();pageNumberList<=pageInfoDTO.getEndRecordNo();pageNumberList++){
			buyItemInfoDTOList.add(list.get(pageNumberList));
			if((list.size()-1) == pageNumberList){
				break;
			}
		}
		pageInfoDTO.setBuyItemInfoDTOList(buyItemInfoDTOList);

		if((pageInfoDTO.getStartRecordNo()-1)<=0){
			pageInfoDTO.setPrevPage(false);
		}else{
			pageInfoDTO.setPrevPage(true);
			pageInfoDTO.setNextPageNo(pageInfoDTO.getCurrentPageNo()-1);
		}

		if(pageInfoDTO.getTotalRecord() < (pageInfoDTO.getEndRecordNo()+pageSize)){
			pageInfoDTO.setNextPage(false);
		}else{
			pageInfoDTO.setNextPage(true);
			pageInfoDTO.setNextPageNo(pageInfoDTO.getCurrentPageNo()+1);
		}
		return pageInfoDTO;
	}

	//商品一覧ページング
	public PageInfoDTO initItem(List<ItemInfoDTO> list,int pageSize){
		PageInfoDTO pageInfoDTO = new PageInfoDTO();

		pageInfoDTO.setTotalPage((int)(list.size()/pageSize)+1);
		pageInfoDTO.setCurrentPageNo(1);
		pageInfoDTO.setTotalRecord(list.size()-1);
		pageInfoDTO.setStartRecordNo(pageSize*(pageInfoDTO.getCurrentPageNo()-1));
		pageInfoDTO.setEndRecordNo(pageInfoDTO.getStartRecordNo()+(pageSize-1));
		if(list.size()%pageSize==0){
			pageInfoDTO.setTotalPage((int)(list.size()/pageSize));
		}
		System.out.println(pageInfoDTO.getStartRecordNo());
		System.out.println(pageInfoDTO.getEndRecordNo());
		List<Integer> pageList = new ArrayList<Integer>();
		for(int pageNumber=1;pageNumber<=pageInfoDTO.getTotalPage();pageNumber++){
			pageList.add(pageNumber);
		}
		pageInfoDTO.setPageList(pageList);

		List<ItemInfoDTO> itemInfoDTOList = new ArrayList<ItemInfoDTO>();
		for(int pageNumberList=pageInfoDTO.getStartRecordNo();
				pageNumberList<=pageInfoDTO.getEndRecordNo();
				pageNumberList++){
			itemInfoDTOList.add(list.get(pageNumberList));
			if((list.size()-1) == pageNumberList){
				break;
			}
		}
		pageInfoDTO.setItemInfoDTOList(itemInfoDTOList);

		if((pageInfoDTO.getStartRecordNo()-1)<=0){
			pageInfoDTO.setPrevPage(false);
		}else{
			pageInfoDTO.setPrevPage(true);
			pageInfoDTO.setNextPageNo(pageInfoDTO.getCurrentPageNo()-1);
		}

		if(pageInfoDTO.getTotalRecord() < (pageInfoDTO.getEndRecordNo()+pageSize)){
			pageInfoDTO.setNextPage(false);
		}else{
			pageInfoDTO.setNextPage(true);
			pageInfoDTO.setNextPageNo(pageInfoDTO.getCurrentPageNo()+1);
		}
		return pageInfoDTO;
	}

	public PageInfoDTO getItemPage(List<ItemInfoDTO> list,int pageSize,String pageNo){
		PageInfoDTO pageInfoDTO = new PageInfoDTO();

		pageInfoDTO.setTotalPage((int)(list.size()/pageSize)+1);
		pageInfoDTO.setCurrentPageNo(Integer.parseInt(pageNo));
		pageInfoDTO.setTotalRecord(list.size()-1);
		pageInfoDTO.setStartRecordNo(pageSize*(pageInfoDTO.getCurrentPageNo()-1));
		pageInfoDTO.setEndRecordNo(pageInfoDTO.getStartRecordNo()+(pageSize-1));
		System.out.println(Integer.parseInt(pageNo));
		System.out.println(pageInfoDTO.getStartRecordNo());
		System.out.println(pageInfoDTO.getEndRecordNo());
		if(list.size()%pageSize==0){
			pageInfoDTO.setTotalPage((int)(list.size()/pageSize));
		}
		List<Integer> pageList = new ArrayList<Integer>();
		for(int pageNumber=1;pageNumber<=pageInfoDTO.getTotalPage();pageNumber++){
			pageList.add(pageNumber);
		}
		pageInfoDTO.setPageList(pageList);

		List<ItemInfoDTO> itemInfoDTOList = new ArrayList<ItemInfoDTO>();
		for(int pageNumberList=pageInfoDTO.getStartRecordNo();pageNumberList<=pageInfoDTO.getEndRecordNo();pageNumberList++){
			itemInfoDTOList.add(list.get(pageNumberList));
			if((list.size()-1) == pageNumberList){
				break;
			}
		}
		pageInfoDTO.setItemInfoDTOList(itemInfoDTOList);

		if((pageInfoDTO.getStartRecordNo()-1)<=0){
			pageInfoDTO.setPrevPage(false);
		}else{
			pageInfoDTO.setPrevPage(true);
			pageInfoDTO.setNextPageNo(pageInfoDTO.getCurrentPageNo()-1);
		}

		if(pageInfoDTO.getTotalRecord() < (pageInfoDTO.getEndRecordNo()+pageSize)){
			pageInfoDTO.setNextPage(false);
		}else{
			pageInfoDTO.setNextPage(true);
			pageInfoDTO.setNextPageNo(pageInfoDTO.getCurrentPageNo()+1);
		}
		return pageInfoDTO;
	}
}
