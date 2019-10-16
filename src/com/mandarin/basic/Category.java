package com.mandarin.basic;

import com.mandarin.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class Category {
	private String id;
	private String name;

	public Category() {
		super();
	}

	public Category(String id, String name) {
		super();
		this.id = id;
		this.name = name;
	}

	/**
	 * @return the id
	 */
	public String getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	public String ChangeIdToName(List<String> result){
		String re="";
		try {
			Connection conn = (Connection) DBUtil.getConnection();
			for(int i=0;i<result.size();i++) {
				String sql0 = "select categoryname from category where categoryid='" + result.get(i) + "'";
				PreparedStatement stmt = (PreparedStatement) conn.prepareStatement(sql0);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					re = re + rs.getString(1) + " ";
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeConnection();
		}
		return re;
	}
}