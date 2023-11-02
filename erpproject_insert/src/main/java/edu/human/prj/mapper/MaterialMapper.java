package edu.human.prj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.human.prj.page.Criteria;
import edu.human.prj.vo.MaterialVO;


@Mapper
public interface MaterialMapper {
	public List<MaterialVO> getList();	
	public List<MaterialVO> material_Totalcount();	
	public MaterialVO read(int mno);		
	public MaterialVO material_Totalcount(int mttcount);		
	public int updateShape(MaterialVO materialVO);		
	public int insertReply(MaterialVO materialVO);	
	public int insertMaterial(MaterialVO materialVO);
	public int delete(int ms_Num);	
	public int delete2(int mr_Num);	
	public int delete3(int md_Num);	
	public int delete4(int sc_Num);	
	public int updateMaterial(MaterialVO materialVO);	
	public List<MaterialVO> getListWithPaging(Criteria cri);	
	public List<MaterialVO> getListWithPaging2(Criteria cri);	
	public List<MaterialVO> getListWithPaging3(Criteria cri);	
	public List<MaterialVO> getListWithPaging4(Criteria cri);	
	public int getTotalCount();
	public int getTotalCount2();
	public int getTotalCount3();
	public int getTotalCount4();
}
