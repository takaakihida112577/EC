package com.internousdev.EC.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.EC.dao.MyPageDAO;
import com.internousdev.EC.dao.SelectBuyItemInfoDAO;
import com.internousdev.EC.dto.BuyItemInfoDTO;
import com.internousdev.EC.dto.LoginDTO;
import com.internousdev.EC.dto.PageInfoDTO;
import com.internousdev.EC.dto.UserInfoDTO;
import com.internousdev.EC.util.PageInfo;
import com.opensymphony.xwork2.ActionSupport;

public class MyPageAction extends ActionSupport implements SessionAware{

	private String pageNo;
	MyPageDAO dao = new MyPageDAO();
	SelectBuyItemInfoDAO selectBuyItemInfoDAO = new SelectBuyItemInfoDAO();
	UserInfoDTO userInfoDTO = new UserInfoDTO();
	LoginDTO loginDTO = new LoginDTO();
	BuyItemInfoDTO buyItemInfoDTO = new BuyItemInfoDTO();
	Map<String,Object> session;
	ArrayList<BuyItemInfoDTO> buyItemInfoDTOList;
	PageInfo pageInfo = new PageInfo();
	PageInfoDTO pageInfoDTO = new PageInfoDTO();

	public String execute(){
		loginDTO = (LoginDTO) session.get("loginUser");
		System.out.println(loginDTO.getId()+"error");
		userInfoDTO = dao.getUserInfo(loginDTO.getId());
		session.put("myPageInfo", userInfoDTO);

		//購入履歴の取得
		buyItemInfoDTOList=selectBuyItemInfoDAO.selectBuyItemInfo(loginDTO.getId());
		System.out.println(buyItemInfoDTOList.size()+"size");
		if(pageNo==null){
			if(!(buyItemInfoDTOList.size()==0)) {
				pageInfoDTO=pageInfo.init(buyItemInfoDTOList, 4);
			}
		}else{
			pageInfoDTO=pageInfo.getPage(buyItemInfoDTOList, 4, pageNo);
		}
		session.put("totalPage", pageInfoDTO.getTotalPage());
		session.put("currentPageNo", pageInfoDTO.getCurrentPageNo());
		session.put("totalRecord", pageInfoDTO.getTotalRecord());
		session.put("startRecordNo", pageInfoDTO.getStartRecordNo());
		session.put("endRecordNo", pageInfoDTO.getEndRecordNo());
		session.put("pageList", pageInfoDTO.getPageList());
		session.put("buyItemInfoDTOList", pageInfoDTO.getBuyItemInfoDTOList());
		session.put("prevPage", pageInfoDTO.getPrevPage());
		session.put("nextPage", pageInfoDTO.getNextPage());
		session.put("prevPageNo", pageInfoDTO.getPrevPageNo());
		session.put("nextPageNo", pageInfoDTO.getNextPageNo());

		return SUCCESS;
	}


	@Override
	public void setSession(Map<String, Object> session) {
		// TODO 自動生成されたメソッド・スタブ
		this.session = session;
	}

	public UserInfoDTO getUserInfoDTO(){
		return userInfoDTO;
	}

	public void setUserInfoDTO(UserInfoDTO userInfoDTO){
		this.userInfoDTO = userInfoDTO;
	}

	public ArrayList<BuyItemInfoDTO> getBuyItemInfoDTOList(){
		return buyItemInfoDTOList;
	}

	public void setBuyItemInfoDTOList(ArrayList<BuyItemInfoDTO> buyItemInfoDTOList){
		this.buyItemInfoDTOList = buyItemInfoDTOList;
	}

	public String getPageNo(){
		return pageNo;
	}

	public void setPageNo(String pageNo){
		this.pageNo = pageNo;
	}
}
