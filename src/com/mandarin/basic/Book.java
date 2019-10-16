package com.mandarin.basic;

public class Book {
	private String id;
	private String ISBN;
	private String location;
	private String name;
	private String author;
	private String publisher;
	private String introduction;
	private double price;
	private int state;

	public Book() {
		super();
	}

	public Book(String id, String ISBN, String location, String name, String author, String publisher,
			String introduction, double price, int state) {
		super();
		this.id = id;
		this.ISBN = ISBN;
		this.location = location;
		this.name = name;
		this.author = author;
		this.publisher = publisher;
		this.introduction = introduction;
		this.price = price;
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
	 * @return the iSBN
	 */
	public String getISBN() {
		return ISBN;
	}

	/**
	 * @param iSBN
	 *            the iSBN to set
	 */
	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}

	/**
	 * @return the location
	 */
	public String getLocation() {
		return location;
	}

	/**
	 * @param location
	 *            the location to set
	 */
	public void setLocation(String location) {
		this.location = location;
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

	/**
	 * @return the author
	 */
	public String getAuthor() {
		return author;
	}

	/**
	 * @param author
	 *            the author to set
	 */
	public void setAuthor(String author) {
		this.author = author;
	}

	/**
	 * @return the publisher
	 */
	public String getPublisher() {
		return publisher;
	}

	/**
	 * @param publisher
	 *            the publisher to set
	 */
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	/**
	 * @return the introduction
	 */
	public String getIntroduction() {
		return introduction;
	}

	/**
	 * @param introduction
	 *            the introduction to set
	 */
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	/**
	 * @return the price
	 */
	public double getPrice() {
		return price;
	}

	/**
	 * @param price
	 *            the price to set
	 */
	public void setPrice(double price) {
		this.price = price;
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

	@Override
	public String toString() {
		return "Book{" +
				"id='" + id + '\'' +
				", ISBN='" + ISBN + '\'' +
				", location='" + location + '\'' +
				", name='" + name + '\'' +
				", author='" + author + '\'' +
				", publisher='" + publisher + '\'' +
				", introduction='" + introduction + '\'' +
				", price=" + price +
				", state=" + state +
				'}';
	}
}