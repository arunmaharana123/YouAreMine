package org.arun.spring.controller;

import java.io.IOException;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.arun.spring.model.Video;
import org.arun.spring.service.MyService;
import org.arun.spring.utility.JsonReader;
import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class VideoController {

	@Autowired
	MyService service;

	@RequestMapping(value = "/video", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getVideos(Model model, final HttpServletRequest request) {
		int count = 0;
		String page = request.getParameter("page");

		if (page != null && page != "") {
			try {
				count = Integer.parseInt(page);
			} catch (NumberFormatException e) {
			}
		}

		List<Video> vdos = service.getVideos(count);
		model.addAttribute("VideoList", vdos);
		model.addAttribute("PageCount", ++count);
		return "video";
	}

	@RequestMapping(value = "/singleVideo", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getSingleVideo(Model model, final HttpServletRequest request) {
		int count = 1;
		String page = request.getParameter("id");

		if (page != null && page != "") {
			try {
				count = Integer.parseInt(page);
			} catch (NumberFormatException e) {
			}
		}

		Video vdo = service.getSingleVideo(count);

		model.addAttribute("VideoInfo", vdo);

		List<Video> vdos = service.getVideos(0);
		model.addAttribute("VideoList", vdos);
		model.addAttribute("PageCount", ++count);
		return "singlevideo";
	}

	@RequestMapping(value = "/uploadYouTube", method = RequestMethod.GET, headers = "Accept=application/json")
	public String uploadYouTube(Model model, final HttpServletRequest request) throws IOException, JSONException {
		List<Video> videos = JsonReader.getYoutubeData();
		for (Video video : videos) {
			if (service.checkVideo(video.getYoutubeId())) {
				service.addVideo(video);
			}
		}

		String keyWord = request.getParameter("q");
		if (StringUtils.isNotBlank(keyWord)) {
			videos = JsonReader.getYoutubeSearchData(keyWord.replaceAll(" ", "%20"));
			for (Video video : videos) {
				if (service.checkVideo(video.getYoutubeId())) {
					service.addVideo(video);
				}
			}
		}
		return "redirect:/video";
	}

	@RequestMapping(value = "/searchYouTube", method = RequestMethod.GET, headers = "Accept=application/json")
	public String searchYouTube(Model model, final HttpServletRequest request) throws IOException, JSONException {
		String keyWord = request.getParameter("q");
		model.addAttribute("keyWord", keyWord);
		if (StringUtils.isNotBlank(keyWord)) {
			List<Video> videos = JsonReader.getYoutubeSearchData(keyWord.replaceAll(" ", "%20"));
			model.addAttribute("VideoList", videos);
			for (Video video : videos) {
				if (service.checkVideo(video.getYoutubeId())) {
					service.addVideo(video);
				}
			}
		}

		List<Video> videos = JsonReader.getYoutubeData();
		for (Video video : videos) {
			if (service.checkVideo(video.getYoutubeId())) {
				service.addVideo(video);
			}
		}
		return "video";
	}

	@RequestMapping(value = "/uploadYTVideo", method = RequestMethod.POST, headers = "Accept=application/json")
	public String uploadVideo(Model model, final HttpServletRequest request) {

		String iframe = request.getParameter("iframe");
		String name = request.getParameter("name");
		String tags = request.getParameter("tags");

		Video video = new Video();
		video.setDate(new Date());
		video.setName(name);
		video.setPath(iframe);
		video.setSize(0);
		video.setStatus("Active");
		video.setTag(tags);
		video.setTime(new Date());
		video.setType("YouTube");
		service.addVideo(video);

		return "uploadYouTube";
	}

}
