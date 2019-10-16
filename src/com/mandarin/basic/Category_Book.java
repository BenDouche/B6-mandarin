package com.mandarin.basic;

import com.mandarin.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Category_Book {
	private String id;
	private String categoryId;
	private int bookId;

	public Category_Book() {
		super();
	}

	public Category_Book(String id, String categoryId, int bookId) {
		super();
		this.id = id;
		this.categoryId = categoryId;
		this.bookId = bookId;
	}

	public Category_Book(String id, String categoryId, String bookId) {
		super();
		this.id = id;
		this.categoryId = categoryId;
		this.bookId = Integer.parseInt(bookId);;
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
	 * @return the categoryId
	 */
	public List<String> getCategoryId(int bookId) {
		List<String> result = new ArrayList<String>();
		try {
			Connection conn = (Connection) DBUtil.getConnection();
			String sql0 = "select categoryid from categoryofbooks where bookid='" + bookId + "'";
			PreparedStatement stmt = (PreparedStatement) conn.prepareStatement(sql0);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				result.add(rs.getString(1));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeConnection();
		}
		return result;
	}

		/**
	 * @param categoryId
	 *            the categoryId to set
	 */
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	/**
	 * @return the bookId
	 */
	public int getBookId() {
		return bookId;
	}

	/**
	 * @param bookId
	 *            the bookId to set
	 */
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
}