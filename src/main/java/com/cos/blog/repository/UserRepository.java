package com.cos.blog.repository;

import com.cos.blog.model.user.User;
import com.cos.blog.model.user.dto.ReqJoinDto;
import com.cos.blog.model.user.dto.ReqLoginDto;

//--MapperScan--에 의해서 메모리에 로드됨. DataAccessConfig.java 안에 respository 라고 설정되어있으니까 다 뒤짐. 
//원래라면 @Repository라고 했어야함. 
public interface UserRepository {
	
	int save(ReqJoinDto dto);
	int findByUsername(String username);
	
	User findByUsernameAndPassword(ReqLoginDto dto);
	int update(int id, String password, String profile);
	User findById(int id);
	
	

}
