package com.cos.blog.repository;

import java.util.List;

import com.cos.blog.model.comment.dto.ReqDetailDto;
import com.cos.blog.model.comment.dto.RespDetailDto;

//--MapperScan--에 의해서 메모리에 로드됨. DataAccessConfig.java 안에 respository 라고 설정되어있으니까 다 뒤짐. 
//원래라면 @Repository라고 했어야함. 
public interface CommentRepository {
	public int save(ReqDetailDto dto);
	public RespDetailDto findById(int id);
	public int delete(int id);
	public List<RespDetailDto> findByPostId(int postId);
	
	

}
