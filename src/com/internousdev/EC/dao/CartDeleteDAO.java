package com.internousdev.EC.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.EC.util.DBConnector;

public class CartDeleteDAO {

	DBConnector db = new DBConnector();
	Connection con = db.getConnection();
	boolean result = false;

	public boolean cartInfoDelete(String cartId){
		String sql = "delete from cart_info_transaction where id=?";

		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, cartId);
			result = ps.execute();
		}catch(SQLException e){
			e.printStackTrace();
		}

		try{
			con.close();
		}catch(SQLException e){
			e.printStackTrace();
		}

		return result;
	}
}
