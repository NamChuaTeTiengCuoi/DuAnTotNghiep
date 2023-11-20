package edu.poly.controller.site;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("layoutForUser")
public class login {

	@RequestMapping("login")
	public String login() {
		
		return "layoutForUser/login33";
	}
}
