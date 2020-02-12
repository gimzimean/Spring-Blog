package com.cos.blog.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.cos.blog.model.RespCM;
import com.cos.blog.model.RespCode;
import com.cos.blog.model.user.User;
import com.cos.blog.model.user.dto.ReqJoinDto;
import com.cos.blog.model.user.dto.ReqLoginDto;
import com.cos.blog.service.UserService;

@Controller
public class UserController {
	private static final String TAG="UserController:";
	
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private HttpSession session;
	
	
	//loginfo <--sysout 대신 !!

	@GetMapping("/user/join")
	public String join() {
		//view resolver가 관여해야하기 떄문에 @responsebody ㄴ ㄴ 
		return"/user/join";
	}
	
	@GetMapping("/user/login")
	public String login() {
		return"/user/login";
	}
	
	@GetMapping("/user/logout")
	public String logout() {
		session.invalidate();
		return "redirect:/";
	}
	
	
	@GetMapping("/user/profile/{id}")
	public String profile() {
		//view resolver가 관여해야하기 떄문에 @responsebody ㄴ ㄴ 
		return"/user/profile";
	}
	
	
	//메시지 컨버터는 request 받을 때 setter로 호출한다. 
	@PostMapping("/user/join")
	public ResponseEntity<?> join(@Valid @RequestBody ReqJoinDto dto, BindingResult bindingResult ) {
		//request 메세지 컨버터 -> security 확인 
		if (bindingResult.hasErrors()) {
			Map<String, String> errorMap= new HashMap<>();
			for (FieldError error: bindingResult.getFieldErrors()) {
				errorMap.put(error.getField(), error.getDefaultMessage());
			}
			return new ResponseEntity<Map<String, String>>(errorMap, HttpStatus.BAD_REQUEST);
		}
		
		//view resolver가 관여해야하기 떄문에 @responsebody ㄴ ㄴ
		int result=userService.회원가입(dto);
		if (result==-2) { //-2 아이디 ㅂ중복된거임 
			return new ResponseEntity<RespCM>(new RespCM(RespCode.아이디중복, "아이디 중복"),HttpStatus.OK);
			
		}else if (result==1) {
			return new ResponseEntity<RespCM>(new RespCM(200, "ok"),HttpStatus.OK);
		}else {
			return new ResponseEntity<RespCM>(new RespCM(500, "fail"),HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	
	@PostMapping("/user/login")
	public ResponseEntity<?> login(@RequestBody @Valid ReqLoginDto dto, BindingResult bindingResult){
		
		if (bindingResult.hasErrors()) {
			Map<String, String> errorMap= new HashMap<>();
			for (FieldError error: bindingResult.getFieldErrors()) {
				errorMap.put(error.getField(), error.getDefaultMessage());
			}
			return new ResponseEntity<Map<String, String>>(errorMap, HttpStatus.BAD_REQUEST);
		}
		
		User principal=userService.로그인(dto);
		
		if (principal!=null) {
			session.setAttribute("principal",principal);
			return new ResponseEntity<RespCM>(new RespCM(200, "ok"),HttpStatus.OK);
			
		}else {
			return new ResponseEntity<RespCM>(new RespCM(400, "ok"),HttpStatus.BAD_REQUEST);
		}
		
		
		
	}
}
