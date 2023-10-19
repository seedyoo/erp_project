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
public class LottoVO {
	
	private final static int LOTTE_NUM = 7;
	private Set<Integer> lottoSet;
	private ArrayList<LottoColorVO> arrLotto;
	private int bonusNum;


	public LottoVO() {
		lottoSet = new HashSet<Integer>();
	    arrLotto = new ArrayList<LottoColorVO>();
				
		while (lottoSet.size() < LOTTE_NUM) {
			lottoSet.add((int) (Math.random() * 45) + 1);
		}
		
		//list를 set 으로
		List<Integer> lottoList = new ArrayList<>(lottoSet);
		
		for(int i =0; i < lottoList.size() -1 ;i++) {
			int num = lottoList.get(i);
			LottoColorVO lottoWithCss = new LottoColorVO(num);		    
			arrLotto.add(lottoWithCss);
		}
		
		bonusNum = lottoList.get(lottoList.size() -1);		
		
		System.out.println(arrLotto);
	}



}


