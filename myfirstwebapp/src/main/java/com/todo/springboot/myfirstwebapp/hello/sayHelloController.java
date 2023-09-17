package com.todo.springboot.myfirstwebapp.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;

@Controller
public class sayHelloController {
	
	@RequestMapping("say-hello")
	@ResponseBody
	public String hello(){
		return "Hello ! What are you learning today?";
	}
	
	@RequestMapping("say-hello-html")
	@ResponseBody
	public String helloFromHTML(){
		StringBuffer sb = new StringBuffer();
		
		sb.append("<html>");
		sb.append("<head>");
		sb.append("<title>");
		sb.append("My First HTML PAGE");
		sb.append("</title>");
		sb.append("</head>");
		sb.append("<body>");
		sb.append("<h1>Hello From HTML</h1>");
		sb.append("</body>");
		sb.append("</html>");
		
		return sb.toString();
	}
	
	@RequestMapping("say-hello-jsp")
	public String helloFromJSP(){
		return "sayHello";
	}

}
