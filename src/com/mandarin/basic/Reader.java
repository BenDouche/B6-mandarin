package com.mandarin.basic;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Reader {
	private String id;
	private String account;
	private String password;
	private double fine;
	private String email;
	private int state;
	private Date creationDate;

	public Reader() {
		super();
	}

	public Reader(String id, String account, String password, double fine, String email, int state, Date creationDate) {
		super();
		this.id = id;
		this.account = account;
		this.password = password;
		this.fine = fine;
		this.email = email;
		this.state = state;
		this.creationDate = creationDate;
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
	 * 发送至读者的email
	 * 
	 * @return the password
	 */
	public String getPassword() {
		// 发送邮件
		return password;
	}

	/**
	 * 更改密码
	 * 
	 * @param password
	 *            the password to set
	 */
	public void setPassword(String oldPassword, String newPassword) {
		if (this.password.equals(oldPassword)) {
			this.password = newPassword;
			// 将数据库中该读者的密码更新
		}
	}

	/**
	 * 获取当前待支付罚金
	 * 
	 * @return the fine
	 */
	public double getFine() {
		return fine;
	}

	/**
	 * @param fine
	 *            the fine to set
	 */
	public void setFine(double fine) {
		this.fine = fine;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email
	 *            the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the state
	 */
	public int getState() {
		return state;
	}

	/**
	 * @param state
	 *            the state to set
	 */
	public void setState(int state) {
		this.state = state;
	}

	/**
	 * @return the creationDate
	 */
	public Date getCreationDate() {
		return creationDate;
	}

	/**
	 * @param creationDate
	 *            the creationDate to set
	 */
	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
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
	 * 根据书籍的任意关键词进行搜索
	 * 
	 * @param str
	 * @return
	 */
	public List<Book> searchBookByAny(String str) {
		List<Book> books = new ArrayList<Book>();
		// 从数据库中搜索所有属性（name,author,publisher,ISBN,location,introduction）包含str的书
		return books;
	}

	/**
	 * 获取当前借阅书籍记录
	 * 
	 * @return
	 */
	public List<BorrowRecord> getBook_Current() {
		List<BorrowRecord> records = new ArrayList<BorrowRecord>();
		// 从数据库的借阅记录中获取该读者当前借阅的书籍记录
		return records;
	}

	/**
	 * 获取已归还书籍记录
	 * 
	 * @return
	 */
	public List<BorrowRecord> getBook_Return() {
		List<BorrowRecord> records = new ArrayList<BorrowRecord>();
		// 从数据库的借阅记录中获取该读者已归还的书籍记录
		return records;
	}

	/**
	 * 预约书籍
	 * 
	 * @param bookId
	 * @return
	 */
	public boolean reserveBook(String bookId) {
		String recorderId = "";// 方法未定
		ResrveRecord record = new ResrveRecord(recorderId, this.id, bookId, new Date(), 1);
		// 更改书籍状态
		// 向数据库中添加record
		return true;
	}
}