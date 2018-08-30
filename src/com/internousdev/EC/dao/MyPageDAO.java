package com.internousdev.EC.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.internousdev.EC.dto.UserInfoDTO;
import com.internousdev.EC.util.DBConnector;

public class MyPageDAO {

	DBConnector db = new DBConnector();
	Connection con = db.getConnection();
	String sql = "select * from user_transaction where id=?";
	UserInfoDTO dto = new UserInfoDTO();

	public UserInfoDTO getUserInfo(String id){
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				dto.setId( rs.getInt("id"));
				dto.setUserName(rs.getString("user_name"));
				dto.setUserId(rs.getString("user_id"));
				dto.setKanaUserName(rs.getString("user_name_kana"));
				dto.setPassword(rs.getString("password"));
				dto.setPhone(rs.getString("phone"));
				dto.setEmail(rs.getString("email"));
				dto.setPostal(rs.getString("postal"));
				dto.setAddressKen(rs.getString("address_ken"));
				dto.setAddress(rs.getString("address"));
				dto.setPoint(rs.getInt("point"));
				System.out.println(rs.getString("address"));
			}
		}catch(SQLException e){
			e.printStackTrace();
		}

		try{
			con.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return dto;
	}
}
