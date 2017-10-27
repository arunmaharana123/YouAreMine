package org.arun.spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.arun.spring.model.Music;
import org.arun.spring.model.MusicAlbum;
import org.arun.spring.model.News;
import org.arun.spring.model.Photo;
import org.arun.spring.model.Video;
import org.arun.spring.service.MyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@Autowired
	MyService service;

	@RequestMapping(value = "/home", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getHome(Model model, HttpServletRequest request) {

		
		try {
			List<News> news = service.getNews(0);
			model.addAttribute("NewsList", news);
		} catch (Exception e) {
		}

		try {
			List<Photo> photos = service.getPhotos(0);
			model.addAttribute("PHOTOS", photos);
		} catch (Exception e) {
		}

		try {
			List<Music> musics = service.getMusics();
			model.addAttribute("MUSICS", musics);
			request.getSession().setAttribute("MUSICS", musics);
		} catch (Exception e) {
		}

		try {
			List<MusicAlbum> musicsa = service.getAllAlbums(0);
			model.addAttribute("MusicAlbums", musicsa);
		} catch (Exception e) {
		}

		try {
			List<Video> videos = service.getVideos(0);
			model.addAttribute("Videos", videos);
		} catch (Exception e) {
		}

		return "home";
	}

}
