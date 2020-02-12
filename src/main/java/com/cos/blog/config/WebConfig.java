package com.cos.blog.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.resource.PathResourceResolver;

@Configuration//IOC 하려고 
public class WebConfig implements WebMvcConfigurer{//web.xml파일이랑 똑같은 파일이 됨 . 오버라이딩 한거임 

	
	@Value("${file.path}")
	private String fileRealPath;
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		WebMvcConfigurer.super.addResourceHandlers(registry);
		
		//파일 경로 인식하게 하기 
		registry.addResourceHandler("/media/**").addResourceLocations("file:///"+fileRealPath).setCachePeriod(3600).resourceChain(true).addResolver(new PathResourceResolver());
				//파일 경로 찾을 떄는 /// 세개 붙여야함. 무조건 //cache 또 다운받으려고 하면 니 캐시 써라 하게 
	
	}
}
