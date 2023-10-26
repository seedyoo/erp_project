package edu.hi.ex.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import edu.hi.ex.mapper.UserMapper;
import edu.hi.ex.vo.UserCustom;
import edu.hi.ex.vo.UserVO;
import lombok.extern.slf4j.Slf4j;
/*
loadUserByUsername()에서 하는 일
- username을 가지고 사용자 정보를 조회
- 사용자의 Role과 권한(Privilege)을 조회하여, SimpleGrantedAuthority 목록을 authorities에 세팅한다.
- Authentication 내부 principal 객체에 UserDetails 객체가 저장된다.
- Authentication 내부 authorities 객체에 사용자의 Role과 권한(Privilege) 정보가 저장된다.
- UserDetails에 authorities가 세팅되어 있어야, API별 role이나 권한 체크를 진행할 수 있다.
*/

/*
 * username을 가지고 사용자 정보를 조회하고 session에 저장될 사용자 주체 정보인 
 * UserDetails를 반환하는 Interface다.
 */


@Slf4j
@Service
public class CustomUserDetailsService implements UserDetailsService  {
	
	@Autowired
	private UserMapper userMapper;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		log.warn("Load User By UserVO number: " + username);
		UserVO vo = userMapper.getUser(username);

		log.warn("queried by UserVO mapper: " + vo);

		return vo == null ? null : new UserCustom(vo);		
	}
}
