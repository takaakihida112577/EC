package com.internousdev.EC.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.EC.dto.ItemInfoDTO;
import com.internousdev.EC.util.DBConnector;
public class selectItemDAO {

	private DBConnector dbConnector = new DBConnector();
	private Connection connection = dbConnector.getConnection();
	ArrayList<ItemInfoDTO> itemInfoDTO = new ArrayList<ItemInfoDTO>();

	//最初に表示する商品情報を取得します
	public ArrayList<ItemInfoDTO> getFirstItemInfo(){
		//
		String sql = "select iit.id,iit.item_name,iit.item_price,iit.item_category,ii.url,it.item_title,it.item_explan from (item_info_transaction iit INNER JOIN item_image ii ON iit.id = ii.id) INNER JOIN item_text it ON iit.id=it.id limit 0, 5";

		try{
			PreparedStatement ps = connection.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				ItemInfoDTO dto = new ItemInfoDTO();
				dto.setId(rs.getString("id"));
				dto.setItemName(rs.getString("item_name"));
				dto.setItemPrice(rs.getString("item_price"));
				dto.setUrl(rs.getString("url"));
				dto.setItemTitle(rs.getString("item_title"));
				dto.setItemExplan(rs.getString("item_explan"));
				itemInfoDTO.add(dto);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}

		try{
			connection.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return itemInfoDTO;
	}

	public ArrayList<ItemInfoDTO> getSelectCategoryItemInfo(String category){
		String sql= "select iit.id,iit.item_name,iit.item_price,iit.item_category,ii.url,it.item_title,it.item_explan from (item_info_transaction iit INNER JOIN item_image ii ON iit.id = ii.id) INNER JOIN item_text it ON iit.id=it.id where iit.item_category=?";

		try{
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, category);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				ItemInfoDTO dto = new ItemInfoDTO();
				dto.setId(rs.getString("id"));
				dto.setItemName(rs.getString("item_name"));
				dto.setItemPrice(rs.getString("item_price"));
				dto.setUrl(rs.getString("url"));
				dto.setItemTitle(rs.getString("item_title"));
				dto.setItemExplan(rs.getString("item_explan"));
				itemInfoDTO.add(dto);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}

		try{
			connection.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return itemInfoDTO;
	}

	public ItemInfoDTO getSelectItemInfo(String id){
		String sql= "select iit.id,iit.item_name,iit.item_price,iit.item_category,ii.url,it.item_title,it.item_explan,item_main from (item_info_transaction iit INNER JOIN item_image ii ON iit.id = ii.id) INNER JOIN item_text it ON iit.id=it.id where iit.id=?";
		ItemInfoDTO dto = new ItemInfoDTO();

		try{
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				dto.setId(rs.getString("id"));
				dto.setItemName(rs.getString("item_name"));
				dto.setItemPrice(rs.getString("item_price"));
				dto.setUrl(rs.getString("url"));
				dto.setItemTitle(rs.getString("item_title"));
				dto.setItemExplan(rs.getString("item_explan"));
				dto.setItemMain(rs.getString("item_main"));
				System.out.println(rs.getString("item_name"));
			}
		}catch(SQLException e){
			e.printStackTrace();
		}

		try{
			connection.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return dto;
	}

	public ArrayList<ItemInfoDTO> getSerchCategory(String serchCate,String serchWord){
		String sql = "select iit.id,iit.item_name,iit.item_price,iit.item_category,ii.url,it.item_title,it.item_explan,item_main from (item_info_transaction iit INNER JOIN item_image ii ON iit.id = ii.id) INNER JOIN item_text it ON iit.id=it.id where iit.item_category=? and iit.item_name like ?";
		serchWord = "%"+serchWord+"%";

		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, serchCate);
			ps.setString(2, serchWord);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				ItemInfoDTO dto = new ItemInfoDTO();
				dto.setId(rs.getString("id"));
				dto.setItemName(rs.getString("item_name"));
				dto.setItemPrice(rs.getString("item_price"));
				dto.setUrl(rs.getString("url"));
				dto.setItemTitle(rs.getString("item_title"));
				dto.setItemExplan(rs.getString("item_explan"));
				itemInfoDTO.add(dto);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}

		try {
			connection.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return itemInfoDTO;
	}

	public ArrayList<ItemInfoDTO> getSerchNonCategory(String serchWord){
		String sql = "select iit.id,iit.item_name,iit.item_price,iit.item_category,ii.url,it.item_title,it.item_explan,item_main from (item_info_transaction iit INNER JOIN item_image ii ON iit.id = ii.id) INNER JOIN item_text it ON iit.id=it.id where iit.item_name like ?";
		serchWord = "%"+serchWord+"%";

		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, serchWord);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				ItemInfoDTO dto = new ItemInfoDTO();
				dto.setId(rs.getString("id"));
				dto.setItemName(rs.getString("item_name"));
				dto.setItemPrice(rs.getString("item_price"));
				dto.setUrl(rs.getString("url"));
				dto.setItemTitle(rs.getString("item_title"));
				dto.setItemExplan(rs.getString("item_explan"));
				itemInfoDTO.add(dto);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}

		try {
			connection.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return itemInfoDTO;
	}
}
