package edu.human.prj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.human.prj.page.Criteria;
import edu.human.prj.vo.UsersVO;


@Mapper
public interface UsersMapper {
	public List<UsersVO> getList();	
	public UsersVO read(String uid);	
	public String updateShape(UsersVO usersVO);			
	public String insertUsers(UsersVO usersVO);
	public String delete(String users_id);	
	public String updateUsers(UsersVO usersVO);	
	public List<UsersVO> getListWithPaging(Criteria cri);	
	public int getTotalCount();
}
