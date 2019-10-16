package com.mandarin.basic;

public class Library {
	private double defaultFine;
	private int defaultReturnTerm;
	private double defaultDeposit;

	public Library() {
		super();
		this.defaultFine = 1;
		this.defaultReturnTerm = 30;
		this.defaultDeposit = 300;
	}

	public Library(double defaultFine, int defaultReturnTerm, double defaultDeposit) {
		super();
		this.defaultFine = defaultFine;
		this.defaultReturnTerm = defaultReturnTerm;
		this.defaultDeposit = defaultDeposit;
	}

	/**
	 * @return the defaultFine
	 */
	public double getDefaultFine() {
		return defaultFine;
	}

	/**
	 * @param defaultFine
	 *            the defaultFine to set
	 */
	public void setDefaultFine(double defaultFine) {
		this.defaultFine = defaultFine;
	}

	/**
	 * @return the defaultReturnTerm
	 */
	public int getDefaultReturnTerm() {
		return defaultReturnTerm;
	}

	/**
	 * @param defaultReturnTerm
	 *            the defaultReturnTerm to set
	 */
	public void setDefaultReturnTerm(int defaultReturnTerm) {
		this.defaultReturnTerm = defaultReturnTerm;
	}

	/**
	 * @return the defaultDeposit
	 */
	public double getDefaultDeposit() {
		return defaultDeposit;
	}

	/**
	 * @param defaultDeposit
	 *            the defaultDeposit to set
	 */
	public void setDefaultDeposit(double defaultDeposit) {
		this.defaultDeposit = defaultDeposit;
	}
}