package com.internousdev.EC.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.EC.util.DBConnector;
import com.internousdev.EC.util.DateUtil;
public class InsertNewItemTextDAO {
	DBConnector db = new DBConnector();
	Connection con = db.getConnection();
	DateUtil dateUtil = new DateUtil();
	String sql = "insert into item_text(item_title,item_explan,item_main) value(?,?,?)";

	public void insertItemInfo(String itemTitle,String itemExplan,String itemMain){
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, itemTitle);
			ps.setString(2, itemExplan);
			ps.setString(3, itemMain);
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
