package com.cos.blog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.cos.blog.service.PostService;

@Controller
public class PostController {
	@Autowired
	private PostService postService;

	@GetMapping({"","/","/post"})
	public String posts(Model model) {
		//view resolver가 관여해야하기 떄문에 @responsebody ㄴ ㄴ 
		

		model.addAttribute("Post", postService.목록보기());
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
