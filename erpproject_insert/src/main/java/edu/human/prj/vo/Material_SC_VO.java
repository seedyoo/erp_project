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
public class Material_SC_VO {

	// 공급업체
	private int sc_num;
	private String users_id;
	private String sc_name;
	private String sc_material;
	private String sc_remarks;
	private int bgroup;
	private int bstep;
	private int bindent;

}

