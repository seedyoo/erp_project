package edu.human.prj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
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
	
	public UsersVO getUser(String users_id);	
	
	@Insert("insert into users(users_id,users_pw,enabled) values(#{users_id},#{users_pw},#{enabled})")
	public int insertUser(UsersVO usersVO);

	@Insert("insert into AUTHORITIES (users_id,AUTHORITY) values(#{users_id},'ROLE_USER')")
	public void insertAuthorities(UsersVO UsersVO);
	
	
}
