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
		Session session = sessionFactory.openSession();
		List<Forum> list = new ArrayList<Forum>();
		
		String hql = "from Forum";
		Query<Forum> query = session.createQuery(hql,Forum.class);  
		list = query.getResultList();
		if(list != null) {			
			return list;
		}
		return null;
	}

	@Override
	public void saveForum(Forum forum) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(forum);
		
	}

}
