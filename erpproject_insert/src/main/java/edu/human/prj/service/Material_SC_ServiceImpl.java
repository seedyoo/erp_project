package edu.human.prj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.human.prj.mapper.Material_SC_Mapper;
import edu.human.prj.page.Criteria;
import edu.human.prj.vo.Material_SC_VO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class Material_SC_ServiceImpl implements Material_SC_Service {

	@Autowired
	private Material_SC_Mapper mapper;

	@Override
	public List<Material_SC_VO> getList() {

		log.info("getList..........");
		return mapper.getList();
	}

	@Override
	public Material_SC_VO get(int mno) {

		log.info("get..........");
		return mapper.read(mno);
	}

	@Override
	public void writeMaterial(Material_SC_VO material_sc_VO) {
		
		mapper.insertMaterial(material_sc_VO);
	}

	@Override
	public void writeReply(Material_SC_VO material_sc_VO) {
		mapper.updateShape(material_sc_VO);
		mapper.insertReply(material_sc_VO);

	}

	@Override
	public int remove(int sc_Num) {
		log.info("remove..........");
		return mapper.delete(sc_Num);
	}


	@Override
	public int modify(Material_SC_VO material_sc) {
		log.info("service modify");
		return mapper.updateMaterial(material_sc);
	}

	@Override
	public List<Material_SC_VO> getListWithPaging(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("getListWithPaging()......");
		return mapper.getListWithPaging(cri);
	}
	

	// 페이징 처리 함수
	@Override
	public int getTotal() {
		log.info("service:getTotal()..");
		return mapper.getTotalCount();
	}

}
