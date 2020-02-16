package com.cos.blog.repository;

import java.util.List;

import com.cos.blog.model.post.Post;
import com.cos.blog.model.post.dto.RequestUpdateDto;
import com.cos.blog.model.post.dto.ResponseListDto;

//--MapperScan--에 의해서 메모리에 로드됨. DataAccessConfig.java 안에 respository 라고 설정되어있으니까 다 뒤짐. 
//원래라면 @Repository라고 했어야함. 
public interface PostRepository {
	
	List<ResponseListDto> findAll();
	Post findById(int id);
	
	int update(RequestUpdateDto dto);
	int delete(int id);
	
	
	

}
