package edu.human.prj.vo;


import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import lombok.Getter;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Getter
@Setter
public class UsersCustom extends User {
	
	@Setter(onMethod_ = @Autowired)
	private UsersVO users;
	   
	public UsersCustom(String users_id, String users_pw, Collection<? extends GrantedAuthority> authorities) {
		super(users_id, users_pw, authorities);
	}

	public UsersCustom(UsersVO users) {
		super(users.getUsers_id(), users.getUsers_pw(), getAuth(users));
		this.users = users;
	}

	public static Collection<? extends GrantedAuthority> getAuth(UsersVO memberVO) {

		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();

		for (AuthVO auth : memberVO.getAuthList()) {
			authorities.add(new SimpleGrantedAuthority(auth.getAuthority()));
		}

		return authorities;
	}
}
