package model;
import java.io.Serializable;
import java.sql.Date;

public class Know implements Serializable {
	private Date date;
	private int know9;
	private int unknow9;
	private int know10;
	private int unknow10;
	private int know11;
	private int unknow11;
	private int know12;
	private int unknow12;
	private int know13;
	private int unknow13;
	private int know14;
	private int unknow14;
	private int know15;
	private int unknow15;
	private int know16;
	private int unknow16;
	private int know17;
	private int unknow17;
	private int knowday;
	private int unknowday;

	// 引数があるコンストラクタ
	public Know(Date date,
			int know9, int unknow9,
			int know10, int unknow10,
			int know11, int unknow11,
			int know12, int unknow12,
			int know13, int unknow13,
			int know14, int unknow14,
			int know15, int unknow15,
			int know16, int unknow16,
			int know17, int unknow17,
			int knowday, int unknowday) {
		super();
		this.date = date;
		this.know9 = know9;
		this.unknow9 = unknow9;
		this.know10 = know10;
		this.unknow10 = unknow10;
		this.know11 = know11;
		this.unknow11 = unknow11;
		this.know12 = know12;
		this.unknow12 = unknow12;
		this.know13 = know13;
		this.unknow13 = unknow13;
		this.know14 = know14;
		this.unknow14 = unknow14;
		this.know15 = know15;
		this.unknow15 = unknow15;
		this.know16 = know16;
		this.unknow16 = unknow16;
		this.know17 = know17;
		this.unknow17 = unknow17;
		this.knowday = knowday;
		this.unknowday = unknowday;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getKnow9() {
		return know9;
	}

	public void setKnow9(int know9) {
		this.know9 = know9;
	}

	public int getUnknow9() {
		return unknow9;
	}

	public void setUnknow9(int unknow9) {
		this.unknow9 = unknow9;
	}

	public int getKnow10() {
		return know10;
	}

	public void setKnow10(int know10) {
		this.know10 = know10;
	}

	public int getUnknow10() {
		return unknow10;
	}

	public void setUnknow10(int unknow10) {
		this.unknow10 = unknow10;
	}

	public int getKnow11() {
		return know11;
	}

	public void setKnow11(int know11) {
		this.know11 = know11;
	}

	public int getUnknow11() {
		return unknow11;
	}

	public void setUnknow11(int unknow11) {
		this.unknow11 = unknow11;
	}

	public int getKnow12() {
		return know12;
	}

	public void setKnow12(int know12) {
		this.know12 = know12;
	}

	public int getUnknow12() {
		return unknow12;
	}

	public void setUnknow12(int unknow12) {
		this.unknow12 = unknow12;
	}

	public int getKnow13() {
		return know13;
	}

	public void setKnow13(int know13) {
		this.know13 = know13;
	}

	public int getUnknow13() {
		return unknow13;
	}

	public void setUnknow13(int unknow13) {
		this.unknow13 = unknow13;
	}

	public int getKnow14() {
		return know14;
	}

	public void setKnow14(int know14) {
		this.know14 = know14;
	}

	public int getUnknow14() {
		return unknow14;
	}

	public void setUnknow14(int unknow14) {
		this.unknow14 = unknow14;
	}

	public int getKnow15() {
		return know15;
	}

	public void setKnow15(int know15) {
		this.know15 = know15;
	}

	public int getUnknow15() {
		return unknow15;
	}

	public void setUnknow15(int unknow15) {
		this.unknow15 = unknow15;
	}

	public int getKnow16() {
		return know16;
	}

	public void setKnow16(int know16) {
		this.know16 = know16;
	}

	public int getUnknow16() {
		return unknow16;
	}

	public void setUnknow16(int unknow16) {
		this.unknow16 = unknow16;
	}

	public int getKnow17() {
		return know17;
	}

	public void setKnow17(int know17) {
		this.know17 = know17;
	}

	public int getUnknow17() {
		return unknow17;
	}

	public void setUnknow17(int unknow17) {
		this.unknow17 = unknow17;
	}

	public int getKnowday() {
		return knowday;
	}

	public void setKnowday(int knowday) {
		this.knowday = knowday;
	}

	public int getUnknowday() {
		return unknowday;
	}

	public void setUnknowday(int unknowday) {
		this.unknowday = unknowday;
	}

}
