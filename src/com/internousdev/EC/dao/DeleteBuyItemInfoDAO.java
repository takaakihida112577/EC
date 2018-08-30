package com.internousdev.EC.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.EC.util.DBConnector;

public class DeleteBuyItemInfoDAO {

	DBConnector db = new DBConnector();
	Connection con = db.getConnection();
	String sql = "delete from user_buy_item_transaction where id=?";

	public void delete(String id) {
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.execute();
		}catch(SQLException e) {
			e.printStackTrace();
		}

		try {
			con.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
}
