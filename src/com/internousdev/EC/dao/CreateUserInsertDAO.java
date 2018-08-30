package com.internousdev.EC.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.EC.dto.CreateUserDTO;
import com.internousdev.EC.util.DBConnector;
import com.internousdev.EC.util.DateUtil;
public class CreateUserInsertDAO {

	DateUtil dateUtil = new DateUtil();
	DBConnector db = new DBConnector();
	Connection con = db.getConnection();
	String sql = "insert into user_transaction(user_name,user_name_kana,user_id,password,phone,email,postal,address_ken,address,insert_date,point) values(?,?,?,?,?,?,?,?,?,?,0)";
	boolean result = false;

	public boolean insertUser(CreateUserDTO dto){

		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, dto.getLastName()+dto.getFirstName());
			ps.setString(2, dto.getKanaLastName()+dto.getKanaFirstName());
			ps.setString(3, dto.getUserId());
			ps.setString(4, dto.getPassword());
			ps.setString(5, dto.getPhone());
			ps.setString(6, dto.getEmail());
			ps.setString(7, dto.getPostal());
			ps.setString(8, dto.getAddressKen());
			ps.setString(9, dto.getAddress());
			ps.setString(10, dateUtil.getDate());
			result = ps.execute();
		}catch(SQLException e){
			e.printStackTrace();
		}

		try{
			con.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return result;
	}
}
