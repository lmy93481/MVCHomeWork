package vegan.Dao.DaoImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import vegan.Dao.ForumDao;
import vegan.model.Forum;

@Repository
@Transactional
public class ForumDaoImpl implements ForumDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	public List<Forum> getForums() {
		Session session = sessionFactory.getCurrentSession();
		String hql = "FROM Forum";
		List<Forum> list = new ArrayList<Forum>();
		for(Forum forum : list) {
			System.out.println(forum);
		}
		
		list = session.createQuery(hql,Forum.class)
									.getResultList();
		
//		if(list != null) {			
			return list;
//		}
//		return null;
	}

	@Override
	public void saveForum(Forum forum) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(forum);
		
	}

}
