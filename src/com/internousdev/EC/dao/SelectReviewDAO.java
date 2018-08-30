package com.internousdev.EC.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.EC.dto.ReviewDTO;
import com.internousdev.EC.util.DBConnector;
public class SelectReviewDAO {

	private DBConnector dbConnector = new DBConnector();
	private Connection connection = dbConnector.getConnection();
	ArrayList<ReviewDTO> reviewDTO = new ArrayList<ReviewDTO>();

	public ArrayList<ReviewDTO> getReview(String itemId){
		String sql = "select * from item_review where item_id=?";

		try{
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, itemId);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				ReviewDTO dto = new ReviewDTO();
				dto.setId(rs.getInt("id"));
				dto.setItem_id(rs.getString("item_id"));
				dto.setTitle(rs.getString("title"));
				dto.setReviewText(rs.getString("review_text"));
				dto.setReviewDate(rs.getString("review_date"));
				dto.setStar(rs.getString("star"));
				reviewDTO.add(dto);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}

		try{
			connection.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return reviewDTO;
	}
}
