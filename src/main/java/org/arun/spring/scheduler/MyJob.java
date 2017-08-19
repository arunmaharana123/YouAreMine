package org.arun.spring.scheduler;

import java.io.IOException;
import java.util.List;

import org.arun.spring.model.News;
import org.arun.spring.utility.JsonReader;
import org.arun.spring.utility.UploadFile;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.json.JSONException;
import org.quartz.Job;
import org.quartz.JobExecutionContext;

public class MyJob {

	SessionFactory sessionf = HibernateUtil.getSessionFactory();
	Session session = sessionf.openSession();
	
	public void executeNews(){
		List<News> news = null;
		try {
			news = JsonReader.getData("");
		} catch (IOException | JSONException e) {
			e.printStackTrace();
		}
		int i = 0;
		for (News news2 : news) {
			boolean result = getNewsTitle(news2.getTitle());
			if (result == false) {
				String img = null;
				try {
					img = UploadFile.newsImageUpload(news2.getImage(), ++i);
				} catch (IOException e) {
					e.printStackTrace();
				}
				if (img != null)
					news2.setImage(img);
				addNews(news2);
			}

		}
		System.out.println("News Updated Successfully");
	}
	
	public boolean addNews(News news2) {
		Session session = sessionf.getCurrentSession();
		try {
			session.persist(news2);
		} catch (Exception e) {
			session.clear();
		}
		return true;
	}
	
	public boolean getNewsTitle(String title) {
		Session session = sessionf.getCurrentSession();
		Criteria criteria = session.createCriteria(News.class);
		criteria.add(Restrictions.eq("title", title));
		List<News> news;
		try {
			news = criteria.list();
			if (news.size() > 0) {
				return true;
			}
			return false;
		} catch (HibernateException e) {
			session.clear();
			return true;

		}

	}
}
