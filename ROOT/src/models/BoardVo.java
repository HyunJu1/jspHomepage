package models;

public class BoardVo {
	int num; // �۹�ȣ .. PK
	String writer; // �ۼ��� ID- �α��ΰ�
	String type; // �з�
	String title; // ����
	String content; // ����
	int count; // ��ȸ��
	String ip; // �ۼ��� ip!

	public BoardVo() {
		super();
	}

	public BoardVo(int num, String writer, String type, String title, String content, int count, String ip) {
		super();
		this.num = num;
		this.writer = writer;
		this.type = type;
		this.title = title;
		this.content = content;
		this.count = count;
		this.ip = ip;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getCount() {
		return count;
	} 

	public void setCount(int count) {
		this.count = count;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}


}
