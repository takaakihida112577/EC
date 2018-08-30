package com.internousdev.EC.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.EC.dao.LoginDAO;
import com.internousdev.EC.dao.MyPageDAO;
import com.internousdev.EC.dao.selectItemDAO;
import com.internousdev.EC.dto.ItemInfoDTO;
import com.internousdev.EC.dto.LoginDTO;
import com.internousdev.EC.dto.PageInfoDTO;
import com.internousdev.EC.dto.UserInfoDTO;
import com.internousdev.EC.util.PageInfo;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware{

	private String loginUserId;
	private String loginPassword;
	public Map<String,Object> session;
	private LoginDAO loginDAO = new LoginDAO();
	private LoginDTO loginDTO = new LoginDTO();
	MyPageDAO mypageDAO = new MyPageDAO();
	UserInfoDTO userInfoDTO = new UserInfoDTO();
	private selectItemDAO dao = new selectItemDAO();
	ArrayList<ItemInfoDTO> itemInfoDTO;
	PageInfo pageInfo = new PageInfo();
	PageInfoDTO pageInfoDTO = new PageInfoDTO();
	private String pageNo;

	public String execute(){
		//ログイン処理部分
		String result = ERROR;
		loginDTO = loginDAO.getLoginUserInfo(loginUserId,loginPassword);
		session.put("loginUser", loginDTO);
		userInfoDTO = mypageDAO.getUserInfo(loginDTO.getId());
		session.put("myPageInfo", userInfoDTO);

		System.out.println(loginUserId + loginPassword);
		if(loginUserId.equals("admin") && loginPassword.equals("admin")){
			return "admin";
		}

		if(((LoginDTO) session.get("loginUser")).getLoginFlg()){
			result = SUCCESS;
			session.put("login_user_id", loginDTO.getLoginId());
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
			return result;
		}
		//商品情報データ取得部分
		itemInfoDTO = dao.getFirstItemInfo();
		return result;
	}

	public String getLoginUserId(){
		return loginUserId;
	}

	public void setLoginUserId(String loginUserId){
		this.loginUserId = loginUserId;
	}

	public String getLoginPassword(){
		return loginPassword;
	}

	public void setLoginPassword(String loginPassword){
		this.loginPassword = loginPassword;
	}

	@Override
	public void setSession(Map<String,Object> session){
		this.session = session;
	}

	public ArrayList<ItemInfoDTO> getItemInfoDTO(){
		return itemInfoDTO;
	}

	public void setItemInfoDTO(ArrayList<ItemInfoDTO> itemInfoDTO){
		this.itemInfoDTO = itemInfoDTO;
	}

	public String getPageNo(){
		return pageNo;
	}

	public void setPageNo(String pageNo){
		this.pageNo = pageNo;
	}
}
