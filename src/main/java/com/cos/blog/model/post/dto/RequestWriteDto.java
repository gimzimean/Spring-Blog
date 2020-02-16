package com.cos.blog.model.post.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RequestWriteDto {
	private String title;
	private String content;
	private int userId;
}
