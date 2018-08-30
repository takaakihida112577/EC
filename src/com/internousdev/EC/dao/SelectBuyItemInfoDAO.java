package com.internousdev.EC.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.EC.dto.BuyItemInfoDTO;
import com.internousdev.EC.util.DBConnector;

public class SelectBuyItemInfoDAO {

	DBConnector db = new DBConnector();
	Connection con = db.getConnection();
	ArrayList<BuyItemInfoDTO> buyItemInfoDTOList = new ArrayList<BuyItemInfoDTO>();

	public ArrayList<BuyItemInfoDTO> selectBuyItemInfo(String userId){
		String sql = "select ubit.id,ubit.item_transaction_id,ubit.total_price,ubit.total_count,ubit.insert_date,ii.url,iit.item_name from (user_buy_item_transaction ubit inner join item_image ii on ubit.item_transaction_id = ii.id) inner join item_info_transaction iit on ubit.item_transaction_id=iit.id where user_master_id=?";

		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, userId);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				BuyItemInfoDTO dto = new BuyItemInfoDTO();
				dto.setId(rs.getString("id"));
				dto.setItemId(rs.getString("item_transaction_id"));
				dto.setTotalCount(rs.getString("total_count"));
				dto.setTotalPrice(rs.getString("total_price"));
				dto.setInsertDate(rs.getString("insert_date"));
				dto.setItemName(rs.getString("item_name"));
				dto.setUrl(rs.getString("url"));
				buyItemInfoDTOList.add(dto);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}

		try{
			con.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return buyItemInfoDTOList;
	}
}
