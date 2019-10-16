package com.mandarin.basic;

public class BookDeleteRecord {
	private String id;
	private String bookId;
	private String librarianId;

	public BookDeleteRecord() {
		super();
	}

	public BookDeleteRecord(String id, String bookId, String librarianId) {
		super();
		this.id = id;
		this.bookId = bookId;
		this.librarianId = librarianId;
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
	 * @return the librarianId
	 */
	public String getLibrarianId() {
		return librarianId;
	}

	/**
	 * @param librarianId
	 *            the librarianId to set
	 */
	public void setLibrarianId(String librarianId) {
		this.librarianId = librarianId;
	}
}