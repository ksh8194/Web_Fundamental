package kr.co.kic.dev1.dto;

public class MemberDto {
	private String id;
	private String email;
	private String pwd;
	public MemberDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	//alt+shilft+s = > o
	public MemberDto(String id , String email , String pwd) {
		super();
		this.id = id;
		this.email = email;
		this.pwd = pwd;
	}
	//alt+shift+s => r = > tab => enter => tab4 => enter
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

}
