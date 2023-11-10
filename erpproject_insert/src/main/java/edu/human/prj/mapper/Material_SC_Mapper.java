package edu.human.prj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.human.prj.page.Criteria;
import edu.human.prj.vo.Material_SC_VO;


@Mapper
public interface Material_SC_Mapper {
	public List<Material_SC_VO> getList();	
	public List<Material_SC_VO> material_Totalcount();	
	public Material_SC_VO read(int mno);			
	public int updateShape(Material_SC_VO material_sc_VO);		
	public int insertReply(Material_SC_VO material_sc_VO);	
	public int insertMaterial(Material_SC_VO material_scVO);
	public int delete(int sc_Num);	
	public int updateMaterial(Material_SC_VO materialVO);	

	public List<Material_SC_VO> getListWithPaging(Criteria cri);	

	public int getTotalCount();
}