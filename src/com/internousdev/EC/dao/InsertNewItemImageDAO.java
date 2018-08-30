package com.internousdev.EC.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.EC.util.DBConnector;
import com.internousdev.EC.util.DateUtil;
public class InsertNewItemImageDAO {
	DBConnector db = new DBConnector();
	Connection con = db.getConnection();
	DateUtil dateUtil = new DateUtil();
	String sql = "insert into item_image(url) value(?)";

	public void insertItemInfo(String url){
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, url);
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
