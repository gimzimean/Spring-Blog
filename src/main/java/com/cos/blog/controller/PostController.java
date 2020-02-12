package com.cos.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class PostController {

	@GetMapping({"","/","/post"})
	public String posts() {
		//view resolver가 관여해야하기 떄문에 @responsebody ㄴ ㄴ 
		return"/post/list";
	}
	
	
	@GetMapping("/post/{id}")
	public String post() {
		return "/post/detail";
	}
	
	@GetMapping("/post/write")
	public String write() {
		return "/post/write";
	}
	
	@GetMapping("/post/update/{id}")
	public String update() {
		return "/post/update";
	}
}
