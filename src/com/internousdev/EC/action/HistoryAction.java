package com.internousdev.EC.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.EC.dto.ItemInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class HistoryAction extends ActionSupport implements SessionAware{

	Map<String,Object> session;
	private int historyFlg;
	ArrayList<ItemInfoDTO> itemInfoDTOHistory;

	@SuppressWarnings("unchecked")
	public String execute(){
		itemInfoDTOHistory = (ArrayList<ItemInfoDTO>) session.get("history");
		if(itemInfoDTOHistory==null){

		}else{

		}
		return SUCCESS;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO 自動生成されたメソッド・スタブ
		this.session = session;
	}

	public int getHistoryFlg(){
		return historyFlg;
	}

	public void setHistoryFlg(int historyFlg){
		this.historyFlg = historyFlg;
	}
}
