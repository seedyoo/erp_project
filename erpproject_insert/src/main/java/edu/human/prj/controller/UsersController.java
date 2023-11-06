package edu.human.prj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import edu.human.prj.page.Criteria;
import edu.human.prj.page.PageVO;
import edu.human.prj.service.UsersService;
import edu.human.prj.vo.UsersVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/users")
public class UsersController {

	@Autowired
	private UsersService usersService;
	
	
//	@GetMapping("/list")
//	public String list(Model model) {
//
//		log.info("list()...");
//		model.addAttribute("boards", boardService.getList());
//		
//		return "board/list";
//	}
	
	//http://localhost:8282/list
	//list?pageNum=5&amount=10">1</a>
	@GetMapping("/users_list")
	public String users_list2(Criteria cri, Model model) {
		log.info("users_list2() ..");
		log.info("users_list2() Criteria " + cri);		
		
		model.addAttribute("userss",usersService.getListWithPaging(cri));
		
		int total = usersService.getTotal();
		log.info("total" + total);			
		
		model.addAttribute("pageMaker", new PageVO(cri, total));	
		
		System.out.println();
		return "users/users_list";
	}
	
	@PostMapping("/users_write")
	public String write(UsersVO users) {
		log.info("users_write() .." + users);		
		
		usersService.writeUsers(users);
		
		return "redirect:/users/users_list";
	}
	
	@GetMapping("/users_delete/{users_id}")
	public String delete(UsersVO users) {
		log.info("users_delete() .." + users);		
		
		usersService.remove(users.getUsers_id());
		
		return "redirect:/users/users_list";
	}
	
	@GetMapping("/users_content/{users_id}")
	public String content(UsersVO users,Model model) {
		log.info("users_content() .." + users);		
		
		model.addAttribute("users",usersService.get(users.getUsers_id()));		
		
		return "/users/users_check";
	}
	@GetMapping("/users_content2/{users_id}")
	public String content2(UsersVO users,Model model) {
		log.info("users_content2() .." + users);		
		
		model.addAttribute("users",usersService.get(users.getUsers_id()));		
		
		return "/users/users_update";
	}
	
	
	@PostMapping("/users_update")
	public String update(UsersVO users) {
		log.info("users_update() .." + users);
		
		usersService.modify(users);				
		
		return "redirect:/users/users_list";
	}
	
	
}
