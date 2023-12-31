package edu.poly;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import edu.poly.interceptor.LoggerInterceptor;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer{
	@Autowired
	LoggerInterceptor loggerInterceptor;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(loggerInterceptor).addPathPatterns("/*", "/**");
		
//		registry.addInterceptor(aut)
//		.addPathPatterns("/account/edit", "/account/chgpwd", "/order/**", "/admin/**")
//		.excludePathPatterns("/assets/**", "/admin/home/index");
	}
	
	
}
