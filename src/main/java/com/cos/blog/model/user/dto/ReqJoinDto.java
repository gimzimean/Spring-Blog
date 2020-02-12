package com.cos.blog.model.user.dto;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor

public class ReqJoinDto {
	
	@Pattern(regexp = "^[a-zA-Z0-9]*$", message = "유저네임에는 한글이 입력될 수 없습니다.")
	@Size(max = 15, message = "아이디는 7~15자 이내로 작성해 주십시오.")
	@NotBlank(message = "유저네임을 입력하세요.")
	private String username;
	
	@Size( max = 15, message = "패스워드 길이가 잘못되었습니다.")
	@NotBlank(message = "패스워드를 입력하세요.")
	private String password;
	
	@Size( max = 30, message = "이메일이 길이가 잘못되었습니다.")
	@Email(message = "이메일 양식이 틀렸습니다.")
	@NotBlank(message = "이메일을 입력하세요.")
	private String email;

	//web.xml  커스터 ㅁ필터 --> 메세지converter(추상 메서드) 실체 구현체는 jackson mapper 메세지 컨버터를 사용할 때 
	
	
	

}
