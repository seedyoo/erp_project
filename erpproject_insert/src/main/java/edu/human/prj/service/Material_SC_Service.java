package edu.human.prj.service;

import java.util.List;

import edu.human.prj.page.Criteria;
import edu.human.prj.vo.Material_SC_VO;


public interface Material_SC_Service {
	
	public void writeMaterial(Material_SC_VO material);
	public void writeReply(Material_SC_VO material);

	public Material_SC_VO get(int mno);
	public int modify(Material_SC_VO material);
	
	public List<Material_SC_VO> getList();
	public int remove(int sc_Num);

	
    // 페이징 처리 함수
    public int getTotal();

	public List<Material_SC_VO> getListWithPaging(Criteria cri);


}
