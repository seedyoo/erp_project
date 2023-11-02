package edu.human.prj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.human.prj.mapper.MaterialMapper;
import edu.human.prj.page.Criteria;
import edu.human.prj.vo.MaterialVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MaterialServiceImpl implements MaterialService {

	@Autowired
	private MaterialMapper mapper;

	@Override
	public List<MaterialVO> getList() {

		log.info("getList..........");
		return mapper.getList();
	}
	@Override
	public List<MaterialVO> material_Totalcount() {
		
		log.info("material_Totalcount..........");
		return mapper.material_Totalcount();
	}

	@Override
	public MaterialVO get(int mno) {

		log.info("get..........");
		return mapper.read(mno);
	}
	@Override
	public MaterialVO get2(int mttcount) {
		
		log.info("get2..........");
		return mapper.material_Totalcount(mttcount);
	}

	@Override
	public void writeMaterial(MaterialVO materialVO) {
		
		mapper.insertMaterial(materialVO);
	}

	@Override
	public void writeReply(MaterialVO materialVO) {
		mapper.updateShape(materialVO);
		mapper.insertReply(materialVO);

	}

	@Override
	public int remove(int ms_Num) {
		log.info("remove..........");
		return mapper.delete(ms_Num);
	}
	@Override
	public int remove2(int mr_Num) {
		log.info("remove2..........");
		return mapper.delete2(mr_Num);
	}
	@Override
	public int remove3(int md_Num) {
		log.info("remove3..........");
		return mapper.delete3(md_Num);
	}
	@Override
	public int remove4(int sc_Num) {
		log.info("remove3..........");
		return mapper.delete4(sc_Num);
	}

	@Override
	public int modify(MaterialVO material) {
		log.info("service modify");
		return mapper.updateMaterial(material);
	}

	@Override
	public List<MaterialVO> getListWithPaging(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("getListWithPaging()......");
		return mapper.getListWithPaging(cri);
	}
	@Override
	public List<MaterialVO> getListWithPaging2(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("getListWithPaging2()......");
		return mapper.getListWithPaging2(cri);
	}
	@Override
	public List<MaterialVO> getListWithPaging3(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("getListWithPaging3()......");
		return mapper.getListWithPaging3(cri);
	}
	@Override
	public List<MaterialVO> getListWithPaging4(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("getListWithPaging4()......");
		return mapper.getListWithPaging4(cri);
	}
	

	// 페이징 처리 함수
	@Override
	public int getTotal() {
		log.info("service:getTotal()..");
		return mapper.getTotalCount();
	}
	@Override
	public int getTotal2() {
		log.info("service:getTotal()..");
		return mapper.getTotalCount2();
	}
	@Override
	public int getTotal3() {
		log.info("service:getTotal()..");
		return mapper.getTotalCount3();
	}
	@Override
	public int getTotal4() {
		log.info("service:getTotal()..");
		return mapper.getTotalCount4();
	}
}
