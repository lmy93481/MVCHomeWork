package vegan.Dao;

import java.util.List;

import vegan.model.Forum;

public interface ForumDao {
	public List<Forum> getForums();
	
	public void saveForum (Forum forum);
}
