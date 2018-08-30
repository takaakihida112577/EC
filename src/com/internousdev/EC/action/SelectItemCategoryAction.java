package com.internousdev.EC.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.EC.dao.selectItemDAO;
import com.internousdev.EC.dto.ItemInfoDTO;
import com.internousdev.EC.dto.PageInfoDTO;
import com.internousdev.EC.util.PageInfo;
import com.opensymphony.xwork2.ActionSupport;

public class SelectItemCategoryAction extends ActionSupport implements SessionAware{
	private String itemCategory;
	selectItemDAO dao = new selectItemDAO();
	ArrayList<ItemInfoDTO> itemInfoDTO;
	String result = ERROR;
	Map<String,Object> session;
	PageInfo pageInfo = new PageInfo();
	PageInfoDTO pageInfoDTO = new PageInfoDTO();
	private String pageNo;

	public String execute(){
			System.out.println("itemCategory"+itemCategory);
			if(itemCategory==null){
				itemInfoDTO = dao.getFirstItemInfo();
			}else{
				itemInfoDTO = dao.getSelectCategoryItemInfo(itemCategory);
			}
			if(pageNo==null){
				if(!(itemInfoDTO.size()==0)) {
					pageInfoDTO=pageInfo.initItem(itemInfoDTO, 4);
				}
			}else{
				pageInfoDTO=pageInfo.getItemPage(itemInfoDTO, 4, pageNo);
			}
			session.put("totalPage", pageInfoDTO.getTotalPage());
			session.put("currentPageNo", pageInfoDTO.getCurrentPageNo());
			session.put("totalRecord", pageInfoDTO.getTotalRecord());
			session.put("startRecordNo", pageInfoDTO.getStartRecordNo());
			session.put("endRecordNo", pageInfoDTO.getEndRecordNo());
			session.put("pageList", pageInfoDTO.getPageList());
			session.put("itemInfoDTO", pageInfoDTO.getItemInfoDTOList());
			session.put("prevPage", pageInfoDTO.getPrevPage());
			session.put("nextPage", pageInfoDTO.getNextPage());
			session.put("prevPageNo", pageInfoDTO.getPrevPageNo());
			session.put("nextPageNo", pageInfoDTO.getNextPageNo());
			itemInfoDTO = (ArrayList<ItemInfoDTO>) pageInfoDTO.getItemInfoDTOList();
			result = SUCCESS;
		return result;
	}

	public String getItemCategory(){
		return itemCategory;
	}

	public void setItemCategory(String itemCategory){
		this.itemCategory = itemCategory;
	}

	public ArrayList<ItemInfoDTO> getItemInfoDTO(){
		return itemInfoDTO;
	}

	public void setItemInfoDTO(ArrayList<ItemInfoDTO> itemInfoDTO){
		this.itemInfoDTO = itemInfoDTO;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO 自動生成されたメソッド・スタブ
		this.session = session;
	}

	public String getPageNo(){
		return pageNo;
	}

	public void setPageNo(String pageNo){
		this.pageNo = pageNo;
	}
}
