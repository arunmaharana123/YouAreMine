package org.arun.spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.arun.spring.model.Music;
import org.arun.spring.model.MusicAlbum;
import org.arun.spring.model.News;
import org.arun.spring.model.Photo;
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

		List<News> news = service.getNews(0);
		model.addAttribute("NewsList", news);

		List<Photo> photos = service.getPhotos(0);
		model.addAttribute("PHOTOS", photos);

		List<Music> musics = service.getMusics();
		model.addAttribute("MUSICS", musics);

		List<MusicAlbum> musicsa = service.getAllAlbums(0);
		model.addAttribute("MusicAlbums", musicsa);

		request.getSession().setAttribute("MUSICS", musics);

		return "home";
	}

}
