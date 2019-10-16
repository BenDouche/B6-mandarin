package com.mandarin.basic;

import com.mandarin.util.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Admin {
	private String id;
	private String account;

	private String password;

	public Admin() {
		super();
	}

	public Admin(String id, String account, String password) {
		super();
		this.id = id;
		this.account = account;
		this.password = password;
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
	 * @return the account
	 */
	public String getAccount() {
		return account;
	}

	/**
	 * @param account
	 *            the account to set
	 */
	public void setAccount(String account) {
		this.account = account;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password
	 *            the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * 登录
	 *
	 * @param account
	 * @param password
	 * @return login state
	 */
	public boolean login(String account, String password) {
		if (account.equals(this.account) && password.equals(this.password))
			return true;
		return false;
	}

	/**
	 * 退出
	 *
	 * @return
	 */
	public boolean logout() {
		return true;
	}

	/**
	 * 创建图书管理员
	 *
	 * @param account
	 * @return
	 */
	public boolean creatLibrarian(String account) {
		Librarian librarian = new Librarian("0001", account, "00010001", 1); // TODO ensure this format
		/* 向数据库中添加librarian */
		boolean flag=true;
		try{
			Connection conn = (Connection) DBUtil.getConnection();
			String sql0 = "select librarianaccount from librarian";
			PreparedStatement stmt = (PreparedStatement) conn.prepareStatement(sql0);
			ResultSet rs =stmt.executeQuery();
			for(;rs.next();){
				if(rs.getString(1).equals(account)){
					flag=false;
					break;
				}
			}
			if(flag){
				//构建语句
				String sql = "insert into librarian(librarianaccount,librarianpassword,librarianState) values (?,?,?)";
				stmt = (PreparedStatement) conn.prepareStatement(sql);
				stmt.setString(1, librarian.getAccount());
				stmt.setString(2, librarian.getPassword());
				stmt.setInt(3, librarian.getState());
				//执行
				stmt.executeUpdate();
			}
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
            DBUtil.closeConnection();
		}
		return flag;
	}

	/**
	 * 通过id搜索图书管理员
	 *
	 * @param id
	 * @return
	 */
	public Librarian searchLibrarianById(String id) {
		Librarian librarian = new Librarian();
		/* 从数据库获取id对应的管理员 */
		return librarian;
	}

	/**
	 * 通过account搜索图书管理员
	 *
	 * @param account
	 * @return
	 */
	public Librarian searchLibrarianByAccount(String account) {
		Librarian librarian = new Librarian();
		/* 从数据库获取account对应的管理员 */
		return librarian;
	}

	/**
	 * 删除account对应的图书管理员
	 *
	 * @param account
	 * @return
	 */
	public boolean deleteLibrarian(String account) {
		/* 从数据库中删除account对应的图书管理员 */
		return true;
	}

	/**
	 * 帮助account对应的图书管理员找回密码
	 *
	 * @param account
	 * @return
	 */
	public String findPassword(String account) {
		String password = new String();
		/* 从数据库获取account对应的管理员的密码 */
		return password;
	}

	/**
	 * 设置默认逾期罚金
	 *
	 * @param defaultFine
	 * @return
	 */
	public boolean setDefaultFine(double defaultFine) {
		/* 将数据库中的图书馆的默认罚金设为defaultFine */
		return true;
	}

	/**
	 * 设置默认还书期限
	 *
	 * @param defaultReturnTerm
	 * @return
	 */
	public boolean setDefaultReturnTerm(int defaultReturnTerm) {
		/* 将数据库中的图书馆的默认还书期限设为defaultReturnTerm */
		return true;
	}

	/**
	 * 设置默认保证金
	 *
	 * @param defaultDeposit
	 * @return
	 */
	public boolean setDefaultDeposit(int defaultDeposit) {
		/* 将数据库中的图书馆的默认保证金设为defaultDeposit */
		return true;
	}
}