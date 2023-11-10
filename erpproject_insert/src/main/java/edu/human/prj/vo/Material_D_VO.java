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
public class Material_D_VO {

	// 자재출고
	private int md_num;
	private String users_id;
	private int sc_num;
	private int emp_num;
	private Timestamp md_date;
	private int md_price;
	private String md_name;
	private int md_count;
	private String md_remarks;
	private int bgroup;
	private int bstep;
	private int bindent;
	
}

