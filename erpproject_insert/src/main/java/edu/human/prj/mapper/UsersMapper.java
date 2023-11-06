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
	public int updateShape(UsersVO usersVO);			
	public int insertUsers(UsersVO usersVO);
	public int insertReply(UsersVO usersVO);
	public int insertAuthorities(UsersVO usersVO);
	public int delete(String users_id);	
	public int adelete(String users_id);
	public int updateUsers(UsersVO usersVO);	
	public List<UsersVO> getListWithPaging(Criteria cri);	
	public int getTotalCount();
	
	public UsersVO getUser(String users_id);	
	
	/*
	 * @Insert("insert into users(users_id,users_pw,enabled) values(#{users_id},#{users_pw},#{enabled})"
	 * ) 
	 * public int insertUser(UsersVO usersVO);
	 */

	/*
	 * @Insert("insert into AUTHORITIES (users_id,AUTHORITY) values(#{users_id},'ROLE_USER')"
	 * ) 
	 * public void insertAuthorities(UsersVO UsersVO);
	 */
	
	
}
