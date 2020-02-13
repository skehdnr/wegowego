package com.wego.web.cs;

import org.springframework.stereotype.Component;

@Component
public interface UserService {
	public User findFindId(User user);
	public User findFindPwd(User user);
}
