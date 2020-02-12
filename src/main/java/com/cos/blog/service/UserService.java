package com.cos.blog.service;

import java.net.InterfaceAddress;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.blog.model.RespCode;
import com.cos.blog.model.user.User;
import com.cos.blog.model.user.dto.ReqJoinDto;
import com.cos.blog.model.user.dto.ReqLoginDto;
import com.cos.blog.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;

	@Transactional
	public int 회원가입(ReqJoinDto dto) {
		

		try {
			int result =userRepository.findByUsername(dto.getUsername());
			if (result==1) {
				return RespCode.아이디중복;
				
			}else {
				return userRepository.save(dto);
			}
		} catch (Exception e) {
			// TODO: handle exception
			throw new RuntimeException();
			
		}
	}
	
	@Transactional
	public User 로그인(ReqLoginDto dto) {
		return userRepository.findByUsernameAndPassword(dto);
		
	}

}
