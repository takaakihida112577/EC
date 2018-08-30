package com.internousdev.EC.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.EC.dto.CreateUserDTO;
import com.internousdev.EC.util.DBConnector;
import com.internousdev.EC.util.DateUtil;

public class ChangeLoginUserInfoDAO {

	DateUtil dateUtil = new DateUtil();
	DBConnector db = new DBConnector();
	Connection con = db.getConnection();

	public boolean changeLoginUserInfo(CreateUserDTO createUserDTO,int id) {
		String sql = "update login_user_transaction set login_id=?,login_pass=?,user_name=?,updated_date=? where id=?";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, createUserDTO.getUserId());
			ps.setString(2, createUserDTO.getPassword());
			if(createUserDTO.getName()==null || createUserDTO.getKanaName()==null) {
				ps.setString(3, createUserDTO.getLastName()+createUserDTO.getFirstName());
			}else {
				ps.setString(3, createUserDTO.getName());
			}
			ps.setString(4, dateUtil.getDate());
			ps.setInt(5, id);
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
