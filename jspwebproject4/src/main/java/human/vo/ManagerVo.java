package human.vo;

// 관리자 정보 클래스
public class ManagerVo {

	// 사번		-> private 멤버변수 선언
	// 비밀번호
	// 이름
	// 전화번호
	private String id;
	private String pwd;
	private String name;
	private String tel;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}

	
	
	// getter, setter 만든 후
	
	// manager.jsp 에서
	// 사번: 1000
	// 비번: admin123
	// 이름: 박대용
	// 전화번호: 123456
	
}
