package org.arun.spring.service;

import java.util.List;

import org.arun.spring.dao.DAO;
import org.arun.spring.model.Apps;
import org.arun.spring.model.CategoryNews;
import org.arun.spring.model.Music;
import org.arun.spring.model.MusicAlbum;
import org.arun.spring.model.News;
import org.arun.spring.model.Photo;
import org.arun.spring.model.Video;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("service")
public class MyService {

	@Autowired
	DAO dao;
	
	// Main Transactions starts...................
	@Transactional
	public List<Object> getHome() {
		return dao.getHome();
	}

	// Main Transactions end...................

	// News Transactions starts...................
	@Transactional
	public List<News> getNews(int count) {
		return dao.getNews(count);
	}

	@Transactional
	public boolean addNews(News news2) {
		return dao.addNews(news2);

	}

	@Transactional
	public boolean getNewsTitle(String title) {
		return dao.getNewsTitle(title);
	}

	@Transactional
	public List<CategoryNews> getNewsCategory(int count, String category) {
		return dao.getNewsCategory(count, category);
	}

	@Transactional
	public boolean getNewsCategoryTitle(String title) {
		return dao.getNewsCategoryTitle(title);
	}

	@Transactional
	public boolean addCategoryNews(CategoryNews news2) {
		return dao.addCategoryNews(news2);

	}

	@Transactional
	public News getSignleNews(String id) {
		return dao.addCategoryNews(id);
	}

	// News Transactions end...................

	// Photo Transactions starts...................
	@Transactional
	public List<Photo> getPhotos(int count) {
		return dao.getPhotos(count);
	}

	@Transactional
	public List<Photo> getCategoryPhotos(int count, String category) {
		return dao.getCategoryPhotos(count, category);
	}

	@Transactional
	public void savePhoto(Photo photo) {
		dao.savePhoto(photo);

	}

	// Photo Transactions end...................

	// Video Transactions starts...................
	@Transactional
	public List<Video> getVideos(int count) {
		return dao.getVideos(count);
	}

	@Transactional
	public boolean addVideo(Video video) {
		return dao.addVideo(video);

	}

	@Transactional
	public Video getSingleVideo(int count) {
		return dao.getSingleVideo(count);
	}

	@Transactional
	public boolean checkVideo(String youtubeId) {
		return dao.checkVideo(youtubeId);
	}
	// Video Transactions end...................

	// Apps Transactions starts...................
	@Transactional
	public List<Apps> getApps() {
		return dao.getApps();
	}

	// Apps Transactions end...................

	// Music Transactions starts...................
	@Transactional
	public List<Music> getMusics() {
		return dao.getMusics();
	}

	@Transactional
	public void addMusic(Music music) {
		dao.addMusic(music);

	}

	@Transactional
	public MusicAlbum getSingleAlbum(int id) {
		return dao.getSingleAlbum(id);

	}

	@Transactional
	public List<MusicAlbum> getAllAlbums(int i) {
		return dao.getAllAlbums(i);
	}

	@Transactional
	public boolean updateAlbum(MusicAlbum album) {
		return dao.updateAlbum(album);

	}

	@Transactional
	public boolean addAlbum(MusicAlbum album) {
		return dao.addAlbum(album);

	}

	@Transactional
	public List<Music> getSingleAlbumMusic(int count) {
		return dao.getSingleAlbumMusic(count);
	}

	// Music Transactions end...................

}
