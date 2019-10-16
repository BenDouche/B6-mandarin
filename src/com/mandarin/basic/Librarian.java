package com.mandarin.basic;

import com.mandarin.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Librarian {
	private String id;
	private String account;
	private String password;
	private int state;

	public Librarian() {
		super();
	}

	public Librarian(String id, String account, String password, int state) {
		super();
		this.id = id;
		this.account = account;
		this.password = password;
		this.state = state;
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
	 * 添加书籍
	 * 
	 * @param id
	 * @param ISBN
	 * @param location
	 * @param name
	 * @param author
	 * @param publisher
	 * @param introduction
	 * @param price
	 * @return
	 */
	public boolean addBook(String id, String ISBN, String location, String name, String author, String publisher,
			String introduction, double price, String categoryName) {
		Book book = new Book(id, ISBN, location, name, author, publisher, introduction, price, 1);
		// 从数据库获取categoryName对应的id
		String categoryId = "";
		String recordId = "";
		Category_Book category_book = new Category_Book(recordId, categoryId, id); // TODO ensure every "id“
		// 向数据库中添加book
		// 向数据库添加book所属的类别
		return true;
	}

	/**
	 * 添加相同的书籍副本
	 * 
	 * @param ISBN
	 * @param num
	 * @return
	 */
	public boolean addBooks(String ISBN, int num) {
		// 从数据库中获取ISBN对应的书
		Book book = new Book();
		String newId;
		String newLocation;
		for (int i = 0; i < num; i++) {
			// 更新id和location（方法未定）
			newId = "";
			newLocation = "";
			book.setId(newId);
			book.setLocation(newLocation);
			// 向数据库中添加newId对应的书
			// 向数据库添加新的书所属类别（同上）
		}
		return true;
	}

	/**
	 * 删除书籍
	 * 
	 * @param id
	 * @return
	 */
	public boolean deleteBook(String id) {
		// 将数据库中id对应书的state设置为0（删除）
		return true;
	}

	/**
	 * 获得书籍删除记录
	 * 
	 * @return
	 */
	public List<BookDeleteRecord> getBookDeleteRecord() {
		// 从数据库中获取全部删除书籍记录
		List<BookDeleteRecord> records = new ArrayList<BookDeleteRecord>();
		return records;
	}

	/**
	 * 编辑书籍信息
	 * 
	 * @param id
	 * @param ISBN
	 * @param location
	 * @param name
	 * @param author
	 * @param publisher
	 * @param introduction
	 * @param price
	 * @param state
	 * @param categoryName
	 * @return
	 */
	public boolean editBook(String id, String ISBN, String location, String name, String author, String publisher,
			String introduction, double price, int state, String categoryName) {
		// 将数据库中id对应的书的信息更新
		return true;
	}

	/**
	 * 通过category查找书
	 * 
	 * @param category
	 * @return
	 */
	public List<Book> searchBookByCategory(String category) {
		// 从数据库中获取属于category的书
		List<Book> books = new ArrayList<Book>();
		return books;
	}

	/**
	 * 通过name查找书
	 * 
	 * @param name
	 * @return
	 */
	public List<Book> searchBookByName(String name) {
		// 从数据库中获取所有name对应的书
		List<Book> books = new ArrayList<Book>();
		return books;
	}

	/**
	 * 通过ISBN查找书
	 * 
	 * @param ISBN
	 * @return
	 */
	public List<Book> searchBookByISBN(String ISBN) {
		// 从数据库中获取所有ISBN对应的书
		List<Book> books = new ArrayList<Book>();
		return books;
	}

	/**
	 * 通过author查找书
	 * 
	 * @param author
	 * @return
	 */
	public List<Book> searchBookByAuthor(String author) {
		// 从数据库中获取所有Author对应的书
		List<Book> books = new ArrayList<Book>();
		return books;
	}

	/**
	 * 通过introduction查找书
	 * 
	 * @param introduction
	 * @return
	 */
	public List<Book> searchBookByIntroduction(String introduction) {
		// 从数据库中获取所有介绍含有introduction的书
		List<Book> books = new ArrayList<Book>();
		return books;
	}

	/**
	 * 创建读者账号
	 * 
	 * @param id
	 * @param account
	 * @param email
	 * @return
	 */
	public boolean creatReader(String id, String account, String email) {
		// SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date currentDate = new Date();
		Reader reader = new Reader(id, account, "123456789", 0.0, email, 1, currentDate);
		// 向数据库中添加reader
		return true;
	}

	/**
	 * 编辑读者信息
	 * 
	 * @param account
	 * @param email
	 * @return
	 */
	public boolean editReader(String account, String email) {
		// 将数据库中account对应的读者信息更新
		return true;
	}

	/**
	 * 删除读者
	 * 
	 * @param account
	 * @return
	 */
	public boolean deleteReader(String account) {
		// 判断account对应的读者fine是否为0
		// 判读account对应的读者是否有未归还的书
		// 将数据库中account对应的读者删除
		return true;
	}

	/**
	 * 获得读者借阅以及归还书籍记录
	 * 
	 * @return
	 */
	public List<BorrowRecord> getBorrow_ReturnRecord() {
		// 从数据库获取所有借阅记录
		List<BorrowRecord> records = new ArrayList<BorrowRecord>();
		return records;
	}

	/**
	 * 获得读者的罚金记录
	 * 
	 * @return
	 */
	public List<BorrowRecord> getFineRecord() {
		// 从数据库获取所有借阅记录（其中包含罚金记录）
		List<BorrowRecord> records = new ArrayList<BorrowRecord>();
		return records;
	}

	/**
	 * 获得图书馆每日收入
	 * 
	 * @param year
	 * @param month
	 * @param day
	 * @return
	 */
	public double getIncomeByDay(int year, int month, int day) {
		double income = 0.0;
		// 利用数据库中所有该日（date）的缴纳的罚金（归还书时缴纳）和注册的读者（注册时缴纳保证金）,计算当日收入
		return income;
	}

	/**
	 * 获得图书馆每月收入
	 * 
	 * @param year
	 * @param month
	 * @return
	 */
	public double getIncomeByMonth(int year, int month) {
		double income = 0.0;
		// 利用数据库中所有该月（date）的缴纳的罚金（归还书时缴纳）和注册的读者（注册时缴纳保证金）,计算当月收入
		return income;
	}

	/**
	 * 获得图书馆每周收入 输入的日期为该周的周一
	 * 
	 * @param year
	 * @param month
	 * @param day
	 * @return
	 */
	public double getIncomeByWeek(int year, int month, int day) {
		// 该周为包含输入日期在内的七天
		double income = 0.0;
		// 利用数据库中所有该周（date）的缴纳的罚金（归还书时缴纳）和注册的读者（注册时缴纳保证金）,计算当周收入
		return income;
	}

	/**
	 * 为读者受理借阅业务
	 * 
	 * @param readerId
	 * @param bookId
	 * @return
	 */
	public boolean borrowBook(String readerId, String bookId) {
		// 判断书籍是否可以被借；若已被预约，则应判断预约人是否为该读者
		// 判断读者是否还可以借书（最多三本）
		String recordId = "";// 获取方式未定
		// 修改书籍状态
		BorrowRecord record = new BorrowRecord(readerId, readerId, bookId, new Date(), null, 0.0);
		// 将借阅记录添加至数据库中
		return true;
	}

	/**
	 * 为读者受理归还书籍业务
	 * 
	 * @param readerId
	 * @param bookId
	 * @return
	 */
	public boolean returnBook(String readerId, String bookId) {
		// 超期则缴纳罚金
		// 从数据库中，更新借阅记录（归还日期，罚金）
		// 修改书籍状态
		return true;
	}

	/**
	 * 添加书籍类别
	 * 
	 * @param name
	 * @return
	 */
	public boolean addCategory(String name) {
		String id = "";// 方法未定
		Category category = new Category(id, name);
		// 将category添加至数据库中
		return true;
	}

	/**
	 * 编辑书籍类别
	 * 
	 * @param name
	 * @param newName
	 * @return
	 */
	public boolean editCategory(String name, String newName) {
		// 从数据库中将name对应的类别名称改为newName
		return true;
	}

	/**
	 * 编辑书籍的所在位置
	 * 
	 * @param id
	 * @param location
	 * @return
	 */
	public boolean editBookLocation(String id, String location) {
		// 从数据库中将id对应的书籍位置更改为location
		return true;
	}

	/**
	 * 添加公告
	 * 
	 * @param id
	 * @param title
	 * @param content
	 * @return
	 */
	public boolean addAnnouncement(String id, String title, String content) {
		Announcement announcement = new Announcement(id, title, content);
		// 向数据库中添加announcement
		return true;
	}

	/**
	 * 删除公告
	 * 
	 * @param id
	 * @return
	 */
	public boolean deleteAnnouncement(String id) {
		// 从数据库中删除id对应的公告
		return true;
	}

	/**
	 * 编辑公告
	 * 
	 * @param id
	 * @param title
	 * @param content
	 * @return
	 */
	public boolean editAnnouncement(String id, String title, String content) {
		// 将数据库中id对应的公告更新
		return true;
	}

	/**
	 * 管理员访问书籍类别的数据库
	 */
	public ArrayList<Category> getAllCatagories()
	{
		ArrayList<Category> categories = new ArrayList<>();

		try {
			Connection conn = (Connection) DBUtil.getConnection();
			String sql = "select * from Category ";
			PreparedStatement stmt = (PreparedStatement) conn.prepareStatement(sql);
			ResultSet rs =stmt.executeQuery();
			while (rs.next()) {
				Category category = new Category();
				category = new Category(rs.getString(1), rs.getString(2));
				System.out.println("类型id:" + rs.getString(1));
				System.out.println("类型名:" + rs.getString(2));
				categories.add(category);
			}
		} catch (Exception var8) {
			var8.printStackTrace();
		} finally {
			DBUtil.closeConnection();
		}
		return categories;

	}
}