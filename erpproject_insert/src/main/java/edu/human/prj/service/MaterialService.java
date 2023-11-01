package edu.human.prj.service;

import java.util.List;

import edu.human.prj.page.Criteria;
import edu.human.prj.vo.MaterialVO;


public interface MaterialService {
	
	public void writeMaterial(MaterialVO material);
	public void writeReply(MaterialVO material);

	public MaterialVO get(int mno);
	public int modify(MaterialVO material);
	
	public List<MaterialVO> getList();
	public List<MaterialVO> material_Totalcount();
	public int remove(int ms_Num);
	public int remove2(int mr_Num);
	public int remove3(int md_Num);
	public int remove4(int sc_Num);
	
    // 페이징 처리 함수
    public int getTotal();
    public int getTotal2();
    public int getTotal3();
    public int getTotal4();
	public List<MaterialVO> getListWithPaging(Criteria cri);
	public List<MaterialVO> getListWithPaging2(Criteria cri);
	public List<MaterialVO> getListWithPaging3(Criteria cri);
	public List<MaterialVO> getListWithPaging4(Criteria cri);

}
