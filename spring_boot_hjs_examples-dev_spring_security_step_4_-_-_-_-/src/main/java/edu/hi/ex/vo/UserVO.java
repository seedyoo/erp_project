package edu.hi.ex.vo;

import java.util.List;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class UserVO {

	private String users_id;
	private String users_pw;
	private int enabled;
	
	private List<AuthVO> authList;
}
