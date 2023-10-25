package edu.human.prj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.human.prj.mapper.UsersMapper;
import edu.human.prj.page.Criteria;
import edu.human.prj.vo.UsersVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class UsersServiceImpl implements UsersService {

	@Autowired
	private UsersMapper mapper;

	@Override
	public List<UsersVO> getList() {

		log.info("getList..........");
		return mapper.getList();
	}

	@Override
	public UsersVO get(String uid) {

		log.info("get..........");
		return mapper.read(uid);
	}

	@Override
	public void writeUsers(UsersVO usersVO) {

		mapper.insertUsers(usersVO);
	}

	@Override
	public String remove(String users_Id) {
		log.info("remove..........");
		return mapper.delete(users_Id);
	}

	@Override
	public String modify(UsersVO users) {
		log.info("service modify");
		return mapper.updateUsers(users);
	}

	@Override
	public List<UsersVO> getListWithPaging(Criteria cri) {
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
