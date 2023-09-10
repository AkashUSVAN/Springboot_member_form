package com.example.demo.UserController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.Users;
import com.example.demo.UsersRepo.UsersRepo;

@Controller
public class UserController {
	
	@Autowired
	UsersRepo repo;

	@RequestMapping("/")
public String home()
{
	return "home.jsp";
}
	@RequestMapping("/addUsers")
	public String addUsers(Users users)
	{
		repo.save(users);
		return "home.jsp";
	}
	
	@RequestMapping("/getUsers")
	public ModelAndView getUsers(@RequestParam int id)
	{
		ModelAndView mv = new ModelAndView("ShowUsers.jsp");
		Users users = repo.findById(id).orElse(new Users());
		mv.addObject(users);
		return mv;
	}
	
	
} 
