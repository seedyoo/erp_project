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
public class MaterialVO {
	// 자재관리
	private int ms_num;
//	private int mr_num;
//	private int md_num;
	private int bgroup;
	private int bstep;
	private int bindent;
	private String users_id;
	private String ms_remarks;
	
	// 자재입고
	private int mr_num;
//	private int sc_num;
	private int emp_num;
	private Timestamp mr_date;
	private int mr_price;
	private String mr_name;
	private int mr_count;
//	private int bgroup;
//	private int bstep;
//	private int bindent;
//	private String users_id;
	private String mr_remarks;
	
	// 자재출고
	private int md_num;
//	private int sc_num;
//	private int emp_num;
	private Timestamp md_date;
	private int md_price;
	private String md_name;
	private int md_count;
//	private int bgroup;
//	private int bstep;
//	private int bindent;
//	private String users_id;
	private String md_remarks;
	
	// 공급업체
	private int sc_num;
	private String sc_name;
	private String sc_material;
	private String sc_remarks;
	
	private int mtcount;
	
}

