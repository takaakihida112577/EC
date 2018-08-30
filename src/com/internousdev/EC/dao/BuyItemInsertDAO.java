package com.internousdev.EC.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.EC.util.DBConnector;
import com.internousdev.EC.util.DateUtil;

public class BuyItemInsertDAO {

	DateUtil dateUtil = new DateUtil();
	DBConnector db = new DBConnector();
	Connection con = db.getConnection();
	String sql = "insert into user_buy_item_transaction(item_transaction_id,total_price,total_count,user_master_id,pay,insert_date) values(?,?,?,?,?,?)";

	public void insertBuyItem(String itemId,String totalPrice,String stock,String userId,String pay){
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, itemId);
			ps.setString(2, totalPrice);
			ps.setString(3, stock);
			ps.setString(4, userId);
			ps.setString(5, pay);
			ps.setString(6, dateUtil.getDate());
			ps.execute();
		}catch(SQLException e){
			e.printStackTrace();
		}

		try{
			con.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
}
