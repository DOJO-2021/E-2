package model;

import java.io.Serializable;

public class TeachIdpw implements Serializable {
	private String t_id;	// ID
	private String t_pw;	// PW
    private String c_name;
	public TeachIdpw(String t_id, String t_pw, String c_name) {
		this.t_id = t_id;
		this.t_pw = t_pw;
		this.c_name = c_name;
	}

	public TeachIdpw() {
		this.t_id = "";
		this.t_pw = "";
		this.c_name = "";
	}

	public String getT_id() {
		return t_id;
	}

	public void setT_id(String t_id) {
		this.t_id = t_id;
	}

	public String getT_pw() {
		return t_pw;
	}

	public void setT_pw(String t_pw) {
		this.t_pw = t_pw;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
}
