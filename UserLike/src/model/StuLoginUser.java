package model;

import java.io.Serializable;

public class StuLoginUser implements Serializable{
	private String s_id;	// ログイン時のID

	public StuLoginUser() {
		this(null);
	}

	public StuLoginUser(String s_id) {
		this.s_id = s_id;
	}

	public String getId() {
		return s_id;
	}

	public void setUserId(String s_id) {
		this.s_id = s_id;
	}

}
