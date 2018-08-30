package com.internousdev.EC.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.EC.dto.CreateUserDTO;
import com.internousdev.EC.util.DBConnector;
import com.internousdev.EC.util.DateUtil;
public class LoginUserInsertDAO {

	DateUtil dateUtil = new DateUtil();
	DBConnector db = new DBConnector();
	Connection con = db.getConnection();
	String sql = "insert into login_user_transaction(login_id,login_pass,user_name,insert_date,point) values(?,?,?,?,0)";

	public void insertLoginUser(CreateUserDTO createUserDTO){
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, createUserDTO.getUserId());
			ps.setString(2, createUserDTO.getPassword());
			ps.setString(3, createUserDTO.getLastName()+createUserDTO.getFirstName());
			ps.setString(4, dateUtil.getDate());
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
