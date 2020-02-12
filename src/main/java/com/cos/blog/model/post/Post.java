package com.cos.blog.model.post;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Getter

public class Post {
	private int id;
	private String title;
	private String content;
	private int userId;
	private Timestamp createDate;
	

}
