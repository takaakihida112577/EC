package com.internousdev.EC.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.EC.util.DBConnector;
import com.internousdev.EC.util.DateUtil;

public class InsertNewItemDAO {

	DBConnector db = new DBConnector();
	Connection con = db.getConnection();
	DateUtil dateUtil = new DateUtil();
	String sql = "insert into item_info_transaction(item_name,item_price,item_stock,item_category,insert_date) value(?,?,?,?,?)";
	public void insertItemInfo(String itemName,String itemPrice,String itemStock,String itemCategory){
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, itemName);
			ps.setString(2, itemPrice);
			ps.setString(3, itemStock);
			ps.setString(4, itemCategory);
			ps.setString(5, dateUtil.getDate());
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
