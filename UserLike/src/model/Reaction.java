package model;

import java.io.Serializable;

public class Reaction implements Serializable {

	private String button;
	private int count;


	public String getButton() {
		return button;
	}
	public void setButton(String button) {
		this.button = button;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}


	public Reaction(String button, int count) {
		super();
		this.button = button;
		this.count = count;
	}
}