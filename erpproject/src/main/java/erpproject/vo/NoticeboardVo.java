package erpproject.vo;

public class NoticeboardVo {
	private int notice_num;
    private String users_num_notice;
    private String notice_title;
    private String notice_content;
    private String notice_regdate;
    private int notice_hit;
    private String notice_remarks;
    
	public int getNotice_num() {
		return notice_num;
	}
	public void setNotice_num(int notice_num) {
		this.notice_num = notice_num;
	}
	public String getUsers_num_notice() {
		return users_num_notice;
	}
	public void setUsers_num_notice(String users_num_notice) {
		this.users_num_notice = users_num_notice;
	}
	public String getNotice_title() {
		return notice_title;
	}
	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}
	public String getNotice_content() {
		return notice_content;
	}
	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}
	public String getNotice_regdate() {
		return notice_regdate;
	}
	public void setNotice_regdate(String notice_regdate) {
		this.notice_regdate = notice_regdate;
	}
	public int getNotice_hit() {
		return notice_hit;
	}
	public void setNotice_hit(int notice_hit) {
		this.notice_hit = notice_hit;
	}
	public String getNotice_remarks() {
		return notice_remarks;
	}
	public void setNotice_remarks(String notice_remarks) {
		this.notice_remarks = notice_remarks;
	}

}
