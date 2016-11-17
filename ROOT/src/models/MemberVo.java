package models;

// ORM .. Object Related Mapping
public class MemberVo {
	String id;
	String pass;
	String name;
	String age;
	Float cm;
	// source 메뉴에 generate getters and setter

	public String getId() {
		return id;
	}

	public String getPass() {
		return pass;
	}

	public String getName() {
		return name;
	}

	public String getAge() {
		return age;
	}

	public Float getCm() {
		return cm;
	}

	public MemberVo() {
		super();
	}

	public MemberVo(String id, String pass, String name, String age, Float cm) {
		super();
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.age = age;
		this.cm = cm;
	}

	// source 메뉴에 generate constructor using fields..

}
