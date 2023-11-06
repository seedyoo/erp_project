package edu.human.prj.mapper;

import static org.junit.jupiter.api.Assertions.*;

import org.apache.ibatis.annotations.Insert;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import edu.human.prj.vo.UsersVO;

@SpringBootTest
class UserMapperTest {

	@Autowired
	private UsersMapper usersMapper;
		
	@Test
	void testInsertUser() {
//		@Insert("insert into users(username,password,enabled) values(#{username},#{password},#{enabled})")
//		public int insertUser(UserVO userVO);
//
//		@Insert("insert into AUTHORITIES (username,AUTHORITY) values(#{username},'ROLE_USER')")
//		public void insertAuthorities(UserVO UserVO);

		UsersVO users = new UsersVO();
		users.setUsers_id("yoo2");
		users.setUsers_pw(new BCryptPasswordEncoder().encode("654321"));
		users.setEnabled(1);
				
		usersMapper.insertUsers(users);
		usersMapper.insertAuthorities(users);
		
		
	}

}
