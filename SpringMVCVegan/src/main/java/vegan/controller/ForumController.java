package vegan.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import vegan.model.Forum;
import vegan.service.ForumService;

@Controller
@RequestMapping("/forum")
public class ForumController {

	@Autowired
	private ForumService forumService;
	
	@GetMapping("/list")
	public String listForum(Model model) {
		List<Forum> forums = forumService.getForums();
		model.addAttribute("forums", forums);
		return "forum";
	}
	
	public String saveForum(@ModelAttribute("forum") Forum forum) {
		forumService.saveForum(forum);
		
		return "addforum";
		
	}
	
	
}
