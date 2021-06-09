package model;

import java.io.Serializable;

public class TeachLoginUser implements Serializable{
	private String t_id;	// ログイン時のID

	public TeachLoginUser() {
		this(null);
	}

	public TeachLoginUser(String t_id) {
		this.t_id = t_id;
	}

	public String getId() {
		return t_id;
	}

	public void setUserId(String t_id) {
		this.t_id = t_id;
	}

}
