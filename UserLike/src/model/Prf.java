package model;
import java.io.Serializable;

public class Prf implements Serializable {
	private String s_id;
	private String s_pw;
	private String s_name;
	private String s_mail;
	private String gender;
	private String c_name;
	private String exp;
	private String college;
	private String b_place;
	private String hobby;
	private String skill;
	private String music;
	private String job;
	private String activity;
	private String pr;


	// 引数があるコンストラクタ
	public Prf(String s_id, String s_pw, String s_name, String s_mail, String gender, String c_name, String exp,
			String college, String b_place, String hobby, String skill, String music, String job, String activity, String pr) {
		super();
		this.s_id = s_id;
		this.s_pw = s_pw;
		this.s_name = s_name;
		this.s_mail = s_mail;
		this.gender = gender;
		this.c_name = c_name;
		this.exp = exp;
		this.college = college;
		this.b_place = b_place;
		this.hobby = hobby;
		this.skill = skill;
		this.music = music;
		this.job = job;
		this.activity = activity;
		this.pr = pr;
	}

	// 引数がないコンストラクタ
	public Prf() {
		super();
		this.s_id = "";
		this.s_pw = "";
		this.s_name = "";
		this.s_mail = "";
		this.gender = "";
		this.c_name = "";
		this.exp = "";
		this.college = "";
		this.b_place = "";
		this.hobby = "";
		this.skill = "";
		this.music = "";
		this.job = "";
		this.activity = "";
		this.pr = "";
	}

	public String getS_id() {
		return s_id;
	}

	public void setS_id(String s_id) {
		this.s_id = s_id;
	}

	public String getS_pw() {
		return s_pw;
	}

	public void setS_pw(String s_pw) {
		this.s_pw = s_pw;
	}

	public String getS_name() {
		return s_name;
	}

	public void setS_name(String s_name) {
		this.s_name = s_name;
	}

	public String getS_mail() {
		return s_mail;
	}

	public void setS_mail(String s_mail) {
		this.s_mail = s_mail;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public String getExp() {
		return exp;
	}

	public void setExp(String exp) {
		this.exp = exp;
	}

	public String getCollege() {
		return college;
	}

	public void setCollege(String college) {
		this.college = college;
	}

	public String getB_place() {
		return b_place;
	}

	public void setB_place(String b_place) {
		this.b_place = b_place;
	}

	public String getHobby() {
		return hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public String getSkill() {
		return skill;
	}

	public void setSkill(String skill) {
		this.skill = skill;
	}
	public String getMusic() {
		return music;
	}

	public void setMusic(String music) {
		this.music = music;
	}
	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}
	public String getActivity() {
		return activity;
	}

	public void setActivity(String activity) {
		this.activity = activity;
	}
	public String getPr() {
		return pr;
	}

	public void setPr(String pr) {
		this.pr = pr;
	}
}