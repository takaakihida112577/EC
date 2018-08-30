package com.internousdev.EC.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.EC.util.DBConnector;
import com.internousdev.EC.util.DateUtil;

public class ReviewInsertDAO {

	DBConnector db = new DBConnector();
	Connection con = db.getConnection();
	DateUtil dateUtil = new DateUtil();
	String sql = "insert into item_review(item_id,title,review_text,review_date,star) values(?,?,?,?,?)";

	public void insertReview(String itemId,String title,String reviewText,String star){

		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, itemId);
			ps.setString(2, title);
			ps.setString(3, reviewText);
			ps.setString(4, dateUtil.getDate());
			ps.setString(5, star);
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
