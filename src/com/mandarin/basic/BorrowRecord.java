package com.mandarin.basic;

import java.util.Date;

public class BorrowRecord {
	private String id;
	private String readerId;
	private String bookId;
	private Date borrowDate;
	private Date returnDate;
	private double fine;

	public BorrowRecord() {
		super();
	}

	public BorrowRecord(String id, String readerId, String bookId, Date borrowDate, Date returnDate, double fine) {
		super();
		this.id = id;
		this.readerId = readerId;
		this.bookId = bookId;
		this.borrowDate = borrowDate;
		this.returnDate = returnDate;
		this.fine = fine;
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
	 * @return the readerId
	 */
	public String getReaderId() {
		return readerId;
	}

	/**
	 * @param readerId
	 *            the readerId to set
	 */
	public void setReaderId(String readerId) {
		this.readerId = readerId;
	}

	/**
	 * @return the bookId
	 */
	public String getBookId() {
		return bookId;
	}

	/**
	 * @param bookId
	 *            the bookId to set
	 */
	public void setBookId(String bookId) {
		this.bookId = bookId;
	}

	/**
	 * @return the borrowDate
	 */
	public Date getBorrowDate() {
		return borrowDate;
	}

	/**
	 * @param borrowDate
	 *            the borrowDate to set
	 */
	public void setBorrowDate(Date borrowDate) {
		this.borrowDate = borrowDate;
	}

	/**
	 * @return the returnDate
	 */
	public Date getReturnDate() {
		return returnDate;
	}

	/**
	 * @param returnDate
	 *            the returnDate to set
	 */
	public void setReturnDate(Date returnDate) {
		this.returnDate = returnDate;
	}

	/**
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
}