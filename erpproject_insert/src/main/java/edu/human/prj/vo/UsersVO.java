package edu.human.prj.vo;

import java.sql.Timestamp;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class UsersVO {
	private String users_id;
	private String users_pw;
	private String users_name;
	private String users_rrnum;
	private String users_email;
	private String users_hp;
	private String users_add;
	private String users_position;
	private Timestamp users_join;
	private String users_remarks;
	private int enabled;
	private int users_num;

	private List<AuthVO> authList;
	
}
