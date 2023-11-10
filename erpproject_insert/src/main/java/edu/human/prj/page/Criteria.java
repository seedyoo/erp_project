package edu.human.prj.page;

import java.util.List;

import edu.human.prj.vo.BoardVO;
import edu.human.prj.vo.UsersVO;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@ToString
@Getter
@Setter
public class Criteria {

	// 페이징 처리를 위해선 페이지 번호와 한페이지당 몇개의 데이터를 보여줄것인지 결정되어야만 함.
	private int pageNum; // 페이지 번호
	private int amount;  // 한페이지당 몇개의 데이터를 보여줄것인가?
	private String keyword; // 검색키워드
	private String type; // 검색 타입
	private String[] typeArr;
	
	public Criteria() {
		this(1,10);// 기본값 1페이지 10개로 지정
	}
	
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	public void setType(String type) {
		this.type = type;
		this.typeArr = type.split("");
	}
	
}