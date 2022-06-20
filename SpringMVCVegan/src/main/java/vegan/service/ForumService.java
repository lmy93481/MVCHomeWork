package vegan.service;

import java.util.List;

import vegan.model.Forum;

public interface ForumService {
	
	public List<Forum> getForums();
	
	public void saveForum (Forum forum);
}
