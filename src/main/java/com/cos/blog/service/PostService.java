package com.cos.blog.service;

import java.util.List;

import javax.servlet.http.HttpSession;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ReturnStatement;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cos.blog.model.RespCM;
import com.cos.blog.model.RespCode;
import com.cos.blog.model.post.Post;
import com.cos.blog.model.post.dto.RequestUpdateDto;
import com.cos.blog.model.post.dto.ResponseListDto;
import com.cos.blog.model.user.User;
import com.cos.blog.repository.PostRepository;

@Service
public class PostService {

	@Autowired
	private PostRepository postRepository;

	@Autowired
	private HttpSession session;

	public List<ResponseListDto> 목록보기() {
		return postRepository.findAll();
	}

	public Post 상세보기(int id) {
		return postRepository.findById(id);
	}

	public Post 수정하기(int id) {
		User principal = (User) session.getAttribute("principal");
		Post post = postRepository.findById(id);
		if (principal.getId() == post.getUserId()) {
			return post;
		} else {
			return null;
		}

	}

	public int 수정완료(RequestUpdateDto dto) {
		User principal = (User) session.getAttribute("principal");
		Post post = postRepository.findById(dto.getId());
		if (principal.getId() == post.getUserId()) {
			return postRepository.update(dto);
		} else {
			return RespCode.권한없음;
		}
	}

	public void 삭제하기(int id) {
		postRepository.delete(id);

	}

}
