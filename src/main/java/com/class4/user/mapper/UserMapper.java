package com.class4.user.mapper;

import com.class4.command.UserVO;

public interface UserMapper {
	public int JoinReq(UserVO vo);
	public UserVO Login(UserVO vo);
	public int idCheck(String userId);
}