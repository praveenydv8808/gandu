package com.todo.springboot.myfirstwebapp.signup;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SignUpController {
//	@RequestParam String name, ModelMap model | model.put("name", name);
	@RequestMapping("/signup")
	public String signup() {
		return "signup";
	}

}
