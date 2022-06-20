package vegan.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import vegan.model.Forum;
import vegan.service.ForumService;

@Controller
public class ForumController {

	@Autowired
	private ForumService forumService;
	
	
	@GetMapping("/add.controller")
	public String add() {
		return "addforum";
	}
	
//	@GetMapping("/list")
	@RequestMapping(value = "/list" , method = RequestMethod.GET)
	public String listForum( Model model) {
		List<Forum> forums = forumService.getForums();
		model.addAttribute("f",forums);
		return "forum";
	}
	
	@PostMapping("/add.controller")
	public String saveForum(@ModelAttribute("forum") Forum forum,BindingResult bindingResult) {
		
		forumService.saveForum(forum);
		
		
		return "success";
		
	}
	
//	@RequestMapping(value = "/list1" , method = RequestMethod.GET)
//	public String queryForum(@RequestParam("forumTitle") String forumTitle ,@RequestParam("forumContent") String forumContent,@RequestParam("forumDate") String forumDate) {
//		List<Forum> forums = forumService.getForums();
//		model.addAttribute(forums);
//		return "forum";
//	}
	
	
}
