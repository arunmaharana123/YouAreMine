package org.arun.spring.dao;

import java.util.List;

import org.arun.spring.model.Apps;
import org.arun.spring.model.CategoryNews;
import org.arun.spring.model.Music;
import org.arun.spring.model.MusicAlbum;
import org.arun.spring.model.News;
import org.arun.spring.model.Photo;
import org.arun.spring.model.Video;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	public SessionFactory getFactory() {
		return this.sessionFactory;
	}

	// Home Data
	public List<Object> getHome() {
		return null;
	}

	// News Data
	public List<News> getNews(int count) {
		Session session = this.sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(News.class);
		criteria.addOrder(Order.desc("id"));
		criteria.setFirstResult(count * 30);
		criteria.setMaxResults(30);
		List<News> news = criteria.list();
		return news;
	}

	public boolean addNews(News news2) {
		Session session = this.sessionFactory.getCurrentSession();
		try {
			session.persist(news2);
		} catch (Exception e) {
			session.clear();
		}
		return true;
	}

	public boolean getNewsTitle(String title) {
		Session session = this.sessionFactory.getCurrentSession();
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

	public boolean getNewsCategoryTitle(String title) {
		Session session = this.sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(CategoryNews.class);
		criteria.add(Restrictions.eq("title", title));
		List<CategoryNews> news;
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

	public List<CategoryNews> getNewsCategory(int count, String category) {
		Session session = this.sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(CategoryNews.class);
		criteria.add(Restrictions.like("category", category, MatchMode.ANYWHERE));
		criteria.addOrder(Order.desc("id"));
		criteria.setFirstResult(count * 30);
		criteria.setMaxResults(30);
		List<CategoryNews> news = criteria.list();
		return news;
	}

	public boolean addCategoryNews(CategoryNews news2) {
		Session session = this.sessionFactory.getCurrentSession();
		try {
			session.persist(news2);
		} catch (Exception e) {
			session.clear();
		}
		return true;
	}

	public News addCategoryNews(String id) {
		Session session = this.sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(News.class);
		try {
			criteria.add(Restrictions.eq("id", Integer.parseInt(id)));
		} catch (NumberFormatException e) {
		}
		List<News> news = criteria.list();
		if (news.size() > 0)
			return news.get(0);
		else
			return null;
	}

	// Photo Data
	public List<Photo> getPhotos(int count) {
		Session session = this.sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(Photo.class);
		criteria.addOrder(Order.desc("id"));
		criteria.setFirstResult(count * 40);
		criteria.setMaxResults(40);
		List<Photo> photos = criteria.list();
		return photos;
	}

	public List<Photo> getCategoryPhotos(int count, String category) {
		Session session = this.sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(Photo.class);
		if ("Recent".equalsIgnoreCase(category)) {

		} else {
			criteria.add(Restrictions.like("category", category, MatchMode.ANYWHERE));
		}

		criteria.addOrder(Order.desc("id"));
		criteria.setFirstResult(count * 40);
		criteria.setMaxResults(40);
		List<Photo> news = criteria.list();
		return news;
	}

	public Photo savePhoto(Photo photo) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(photo);
		return photo;
	}

	// Video Data
	public List<Video> getVideos(int count) {
		Session session = this.sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(Video.class);
		criteria.addOrder(Order.desc("id"));
		criteria.setFirstResult(count * 15);
		criteria.setMaxResults(15);
		List<Video> vdos = criteria.list();
		return vdos;
	}

	public boolean addVideo(Video video) {
		Session session = this.sessionFactory.getCurrentSession();
		try {
			session.persist(video);
		} catch (Exception e) {
			session.clear();
		}
		return true;
	}

	public Video getSingleVideo(int count) {
		Session session = this.sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(Video.class);
		criteria.add(Restrictions.eq("id", count));
		List<Video> vdos = criteria.list();
		if (vdos.isEmpty()) {
			return null;
		}
		return vdos.get(0);
	}

	public boolean checkVideo(String youtubeId) {
		Session session = this.sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(Video.class);
		criteria.add(Restrictions.eq("youtubeId", youtubeId));
		List<Video> videos;
		try {
			videos = criteria.list();
			if (videos.size() > 0) {
				return false;
			}
			return true;
		} catch (HibernateException e) {
			session.clear();
			return true;

		}
	}

	// Apps Data
	public List<Apps> getApps() {
		return null;
	}

	// Music Data
	public List<Music> getMusics() {
		Session session = this.sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(Music.class);
		criteria.addOrder(Order.desc("id"));
		criteria.setMaxResults(10);
		List<Music> news = criteria.list();
		return news;
	}

	public boolean addMusic(Music music) {
		Session session = this.sessionFactory.getCurrentSession();
		try {
			session.save(music);
		} catch (Exception e) {
			session.clear();
		}
		return true;

	}

	public MusicAlbum getSingleAlbum(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(MusicAlbum.class);
		criteria.add(Restrictions.eq("id", id));
		List<MusicAlbum> musicAlbums = criteria.list();
		if (musicAlbums.size() > 0) {
			return musicAlbums.get(0);
		} else {
			return null;
		}

	}

	public List<MusicAlbum> getAllAlbums(int count) {
		Session session = this.sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(MusicAlbum.class);
		criteria.addOrder(Order.desc("id"));
		if (count > 0) {
			criteria.setFirstResult(count * 10);
			criteria.setMaxResults(10);
		}
		List<MusicAlbum> musicAlbums = criteria.list();
		return musicAlbums;
	}

	public boolean updateAlbum(MusicAlbum album) {
		Session session = this.sessionFactory.getCurrentSession();
		try {
			session.update(album);
		} catch (Exception e) {
			session.clear();
		}
		return true;
	}

	public boolean addAlbum(MusicAlbum album) {
		Session session = this.sessionFactory.getCurrentSession();
		try {
			session.save(album);
		} catch (Exception e) {
			session.clear();
		}
		return true;
	}

	public List<Music> getSingleAlbumMusic(int count) {
		Session session = this.sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(Music.class);
		criteria.add(Restrictions.eq("musicAlbum.id", count));
		List<Music> news = criteria.list();
		return news;
	}

}
