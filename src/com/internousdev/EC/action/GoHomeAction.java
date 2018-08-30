package com.internousdev.EC.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.EC.dao.selectItemDAO;
import com.internousdev.EC.dto.ItemInfoDTO;
import com.internousdev.EC.dto.PageInfoDTO;
import com.internousdev.EC.util.PageInfo;
import com.opensymphony.xwork2.ActionSupport;

public class GoHomeAction extends ActionSupport implements SessionAware{
	private selectItemDAO dao = new selectItemDAO();
	private String pageNo;
	ArrayList<ItemInfoDTO> itemInfoDTO;
	Map<String,Object> session;
	PageInfo pageInfo = new PageInfo();
	PageInfoDTO pageInfoDTO = new PageInfoDTO();
	public String execute(){
		itemInfoDTO = dao.getFirstItemInfo();

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
		return SUCCESS;
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
