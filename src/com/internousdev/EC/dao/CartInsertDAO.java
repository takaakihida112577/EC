package com.internousdev.EC.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.EC.util.DBConnector;

public class CartInsertDAO {

	DBConnector dbConnector = new DBConnector();
	Connection con = dbConnector.getConnection();
	String sql = "insert into cart_info_transaction(user_id,item_id,item_name,item_price,item_stock) values(?,?,?,?,?)";

	public void cartInsert(String userId,String itemId,String itemName,String itemPrice,int stock){

		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, Integer.parseInt(userId));
			ps.setInt(2, Integer.parseInt(itemId));
			ps.setString(3, itemName);
			ps.setInt(4, Integer.parseInt(itemPrice));
			ps.setInt(5, stock);
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
