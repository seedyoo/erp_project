package edu.hi.ex.vo;


import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Data
public class CustomUserDetails implements UserDetails {
	
	private String ID;
	private String PASSWORD;
	private String NAME;
	private String AUTHORITY;
	private boolean ENABLED;

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
        ArrayList<GrantedAuthority> auth = new ArrayList<GrantedAuthority>();
        auth.add(new SimpleGrantedAuthority(AUTHORITY));
        return auth;
	}

	@Override
	public String getPassword() {
		return PASSWORD;
	}

	@Override
	public String getUsername() {
		return ID;
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return ENABLED;
	}

	public String getNAME() {
		return NAME;
	}

	public void setNAME(String name) {
		NAME = name;
	}

}
