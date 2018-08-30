package com.internousdev.EC.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.EC.dto.CartDTO;
import com.internousdev.EC.util.DBConnector;
public class CartSelectDAO {
	ArrayList<CartDTO> cartDTO = new ArrayList<CartDTO>();
	DBConnector dbConnector = new DBConnector();
	Connection con = dbConnector.getConnection();


	public ArrayList<CartDTO> getCartInfo(String loginId){
		String sql = "select cit.id,cit.item_name,cit.item_price,cit.item_stock,ii.url from cart_info_transaction cit INNER JOIN item_image ii ON cit.item_id = ii.id where cit.user_id = ?";
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, loginId);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				CartDTO dto = new CartDTO();
				dto.setId(rs.getString("id"));
				dto.setItemName(rs.getString("item_name"));
				dto.setItemPrice(rs.getString("item_price"));
				dto.setItemStock(rs.getString("item_stock"));
				dto.setUrl(rs.getString("url"));
				cartDTO.add(dto);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}

		try{
			con.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return cartDTO;
	}

	public CartDTO getBuyCartInfo(String id){
		String sql = "select cit.item_name,cit.item_id,cit.item_price,cit.item_stock,ii.url from cart_info_transaction cit INNER JOIN item_image ii ON cit.item_id = ii.id where cit.id = ?";
		CartDTO dto2 = new CartDTO();
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				dto2.setItemId(rs.getString("item_id"));
				dto2.setItemName(rs.getString("item_name"));
				dto2.setItemPrice(rs.getString("item_price"));
				dto2.setItemStock(rs.getString("item_stock"));
				dto2.setUrl(rs.getString("url"));
				System.out.println(rs.getString("url"));
			}
		}catch(SQLException e){
			e.printStackTrace();
		}

		try{
			con.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return dto2;
	}
}