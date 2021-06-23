package model;

import java.io.Serializable;

public class Result implements Serializable {

	private String title;		// タイトル
	private String message;		// メッセージ
	private String backTo;		// 戻り先
	private String maxim;     //矢沢講師の名言

	public Result() {
		this(null, null, null, null);
	}

	public Result(String title, String message, String backTo, String maxim) {
		this.title = title;
		this.message = message;
		this.backTo = backTo;
		this.maxim = maxim;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getBackTo() {
		return backTo;
	}

	public void setBackTo(String backTo) {
		this.backTo = backTo;
	}

	public String getMaxim() {
		return maxim;
	}

	public void setMaxim(String maxim) {
		this.maxim = maxim;
	}

}
