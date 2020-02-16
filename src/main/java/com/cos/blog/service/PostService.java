package com.cos.blog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cos.blog.model.post.dto.ResponseListDto;
import com.cos.blog.repository.PostRepository;

@Service
public class PostService {
	
	@Autowired
	private PostRepository postRepository;
	
	public List<ResponseListDto> 목록보기() {
		return postRepository.findAll();
	}

}
