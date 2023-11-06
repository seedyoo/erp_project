package edu.human.prj.service;

import java.util.List;

import edu.human.prj.page.Criteria;
import edu.human.prj.vo.UsersVO;


public interface UsersService {

	public void writeUsers(UsersVO users);
	public void writeReply(UsersVO users);

	public UsersVO get(String uid);
	public int modify(UsersVO users);
	
	public List<UsersVO> getList();
	public int remove(String users_id);
	
    // 페이징 처리 함수
    public int getTotal();
	public List<UsersVO> getListWithPaging(Criteria cri);
	
}
