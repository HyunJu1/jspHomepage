package models;

import java.sql.Date;

public class PhotoVo {
	int num; // 자동
	String id;
	String url;
	String path;
	Date regdate; // 자동

	public PhotoVo() {
		super();
	}

	public PhotoVo(String id, String url, String path) {
		super();
		this.id = id;
		this.url = url;
		this.path = path;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	// generate constructor

}
