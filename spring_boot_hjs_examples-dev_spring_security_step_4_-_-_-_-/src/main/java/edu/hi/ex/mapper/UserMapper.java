package edu.hi.ex.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import edu.hi.ex.vo.UserVO;

@Mapper
public interface UserMapper {
	
	public UserVO getUser(String users_id);	
	
	@Insert("insert into users(users_id,users_pw,enabled) values(#{users_id},#{users_pw},#{enabled})")
	public int insertUser(UserVO userVO);

	@Insert("insert into AUTHORITIES (users_id,AUTHORITY) values(#{users_id},'ROLE_USER')")
	public void insertAuthorities(UserVO UserVO);

	
}
