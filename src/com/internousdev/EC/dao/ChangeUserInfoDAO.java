package com.internousdev.EC.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.EC.dto.CreateUserDTO;
import com.internousdev.EC.util.DBConnector;
import com.internousdev.EC.util.DateUtil;

public class ChangeUserInfoDAO {

	DateUtil dateUtil = new DateUtil();
	DBConnector db = new DBConnector();
	Connection con = db.getConnection();

	public boolean changeUserInfo(CreateUserDTO createUserDTO,int id) {
		String sql = "update user_transaction set user_name=?,user_name_kana=?,user_id=?,password=?,phone=?,email=?,postal=?,address_ken=?,address=?,updated_date=? where id=?";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			if(createUserDTO.getName()==null || createUserDTO.getKanaName()==null) {
				ps.setString(1, createUserDTO.getLastName()+createUserDTO.getFirstName());
				ps.setString(2, createUserDTO.getKanaLastName()+createUserDTO.getKanaFirstName());
				System.out.println("change" + createUserDTO.getKanaLastName()+createUserDTO.getKanaFirstName());
			}else {
				ps.setString(1, createUserDTO.getName());
				ps.setString(2, createUserDTO.getKanaName());
				System.out.println("change" + createUserDTO.getKanaName());
			}
			ps.setString(3, createUserDTO.getUserId());
			ps.setString(4, createUserDTO.getPassword());
			ps.setString(5, createUserDTO.getPhone());
			ps.setString(6, createUserDTO.getEmail());
			ps.setString(7, createUserDTO.getPostal());
			ps.setString(8, createUserDTO.getAddressKen());
			ps.setString(9, createUserDTO.getAddress());
			ps.setString(10, dateUtil.getDate());
			ps.setInt(11, id);
			ps.execute();
		}catch(SQLException e) {
			e.printStackTrace();
		}

		try {
			con.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return true;
	}
}
