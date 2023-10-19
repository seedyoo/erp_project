package edu.human.prj.vo;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@ToString
@Getter
@Setter
public class LottoColorVO {
	
	private int num;
	private String background;
	private String fontColor ="white";
	
	public LottoColorVO(int num) {
		this.num = num;		
		getBackground();		
	}
	
	public String getBackground() {
		if(num > 0 && num <=10 )
			background = "gold";
		else if(num > 10 && num <= 20 )
			background = "green";
		else if(num > 20 && num <= 30 )
			background = "gray";
		else if(num > 30 && num <= 40 )
			background = "black";
		else
			background = "black";
		
		return background;
	}
}


