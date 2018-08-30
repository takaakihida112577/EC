package com.internousdev.EC.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.EC.dao.ChangeLoginUserInfoDAO;
import com.internousdev.EC.dao.ChangeUserInfoDAO;
import com.internousdev.EC.dao.CreateUserInsertDAO;
import com.internousdev.EC.dao.LoginUserInsertDAO;
import com.internousdev.EC.dto.CreateUserDTO;
import com.internousdev.EC.dto.UserInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class CreateUserCompleteAction extends ActionSupport implements SessionAware{

	private int resultFlg = 0;
	String changeFlg;
	CreateUserInsertDAO createUserInsertDAO = new CreateUserInsertDAO();
	LoginUserInsertDAO loginUserInsertDAO = new LoginUserInsertDAO();
	ChangeUserInfoDAO changeUserInfoDAO = new ChangeUserInfoDAO();
	ChangeLoginUserInfoDAO changeLoginUserInfoDAO = new ChangeLoginUserInfoDAO();
	CreateUserDTO createUserDTO = new CreateUserDTO();
	UserInfoDTO userInfoDTO = new UserInfoDTO();
	Map<String,Object> session;
	boolean result;

	public String execute(){
		userInfoDTO = (UserInfoDTO) session.get("myPageInfo");
		createUserDTO = (CreateUserDTO) session.get("createUserDTO");
		changeFlg=session.get("changeFlg").toString();
		if(changeFlg.equals("0")) {
			result = createUserInsertDAO.insertUser(createUserDTO);
			loginUserInsertDAO.insertLoginUser(createUserDTO);
			if(!result){
				resultFlg = 1;
			}
		}else if(changeFlg.equals("1")){
			System.out.println("update2");
			result = changeUserInfoDAO.changeUserInfo(createUserDTO, userInfoDTO.getId());
			changeLoginUserInfoDAO.changeLoginUserInfo(createUserDTO, userInfoDTO.getId());
			if(!result) {
				resultFlg = 1;
			}
		}
		return SUCCESS;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO 自動生成されたメソッド・スタブ
		this.session = session;
	}

	public int getResultFlg(){
		return resultFlg;
	}

	public void setResultFlg(int resultFlg){
		this.resultFlg = resultFlg;
	}
}
