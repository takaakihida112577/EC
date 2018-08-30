package com.internousdev.EC.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.EC.util.DBConnector;

public class PointInsertDAO {

	public void loginInsertPoint(int point,String id){
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		String sql = "update login_user_transaction set point=? where id=?";

		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, point);
			ps.setString(2, id);
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

	public void userInsertPoint(int point,String id){
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		String sql = "update user_transaction set point=? where id=?";

		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, point);
			ps.setString(2, id);
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
