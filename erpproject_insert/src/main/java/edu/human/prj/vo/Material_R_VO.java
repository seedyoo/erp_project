package edu.human.prj.vo;

import java.sql.Timestamp;

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
public class Material_R_VO {

	// 자재입고
	private int mr_num;
	private String users_id;
	private int sc_num;
	private int emp_num;
	private Timestamp mr_date;
	private int mr_price;
	private String mr_name;
	private int mr_count;
	private String mr_remarks;
	private int bgroup;
	private int bstep;
	private int bindent;
	


	
}

