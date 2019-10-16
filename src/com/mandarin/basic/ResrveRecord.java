package com.mandarin.basic;

import java.util.Date;

public class ResrveRecord {
	private String id;
	private String readerId;
	private String bookId;
	private Date appointDate;
	private int state;

	public ResrveRecord() {
		super();
	}

	public ResrveRecord(String id, String readerId, String bookId, Date appointDate, int state) {
		super();
		this.id = id;
		this.readerId = readerId;
		this.bookId = bookId;
		this.appointDate = appointDate;
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
	 * @return the appointDate
	 */
	public Date getAppointDate() {
		return appointDate;
	}

	/**
	 * @param appointDate
	 *            the appointDate to set
	 */
	public void setAppointDate(Date appointDate) {
		this.appointDate = appointDate;
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
}