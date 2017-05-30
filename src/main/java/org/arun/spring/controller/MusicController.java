package org.arun.spring.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.apache.commons.lang.StringUtils;
import org.arun.spring.model.Music;
import org.arun.spring.model.MusicAlbum;
import org.arun.spring.service.MyService;
import org.arun.spring.utility.AudioUtility;
import org.arun.spring.utility.UploadFile;
import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MusicController {

	@Autowired
	MyService service;

	@RequestMapping(value = "/music", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getHome(Model model, final HttpServletRequest request) {

		int count = 0;
		String page = request.getParameter("page");

		if (page != null && page != "") {
			try {
				count = Integer.parseInt(page);
			} catch (NumberFormatException e) {
			}
		}

		List<MusicAlbum> albums = service.getAllAlbums(count);
		model.addAttribute("Albums", albums);
		return "music";
	}

	@RequestMapping(value = "/singleAlbum", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getSingleAlbum(Model model, final HttpServletRequest request) {

		int count = 1;
		String id = request.getParameter("albumId");

		if (id != null && id != "") {
			try {
				count = Integer.parseInt(id);
			} catch (NumberFormatException e) {
			}
		}

		List<Music> albums = service.getSingleAlbumMusic(count);
		model.addAttribute("Albums", albums);
		model.addAttribute("AlbumCurrent", service.getSingleAlbum(count));
		model.addAttribute("AlbumPrevious", service.getSingleAlbum(count - 1));
		model.addAttribute("AlbumNext", service.getSingleAlbum(count + 1));
		return "singleAlbum";
	}

	@RequestMapping(value = "/addMusic", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getAddPhoto(Model model, final HttpServletRequest request) throws IOException, JSONException {
		List<MusicAlbum> albums = service.getAllAlbums(-1);
		model.addAttribute("Albums", albums);
		return "addMusic";
	}

	@RequestMapping(value = "/addAlbum", method = RequestMethod.POST, headers = "Accept=application/json")
	public ModelAndView getAddAlbum(Model model, @RequestParam("filename") CommonsMultipartFile multipartFile,
			final HttpServletRequest request) throws IOException, JSONException {

		MusicAlbum album = new MusicAlbum();
		if (multipartFile.getSize() != 0) {
			String filePath = UploadFile.uploadMusic(multipartFile, request.getParameter("name"));
			album.setAlbumImage(filePath);
			album.setAlbumName(request.getParameter("name"));
			album.setStatus("Active");
			album.setDate(new Date());
			album.setTime(new Date());
			album.setTotalSongs(0);
			service.addAlbum(album);
		}

		List<MusicAlbum> albums = service.getAllAlbums(-1);
		model.addAttribute("Albums", albums);
		return new ModelAndView("redirect:/addMusic", "filename", "File Uploaded Successfully");
	}

	@RequestMapping(value = "/updateAlbum", method = RequestMethod.POST, headers = "Accept=application/json")
	public ModelAndView getUpdateAlbum(Model model, @RequestParam("filename") CommonsMultipartFile multipartFile,
			final HttpServletRequest request) throws IOException, JSONException {

		String albumId = request.getParameter("albumid");
		MusicAlbum album = null;
		if (StringUtils.isNotBlank(albumId)) {
			int id = Integer.parseInt(albumId);
			album = service.getSingleAlbum(id);
			if (multipartFile.getSize() != 0) {
				String filePath = UploadFile.uploadMusic(multipartFile, request.getParameter("name"));
				album.setAlbumImage(filePath);
			}
			album.setAlbumName(request.getParameter("name"));
			service.updateAlbum(album);
		}

		List<MusicAlbum> albums = service.getAllAlbums(-1);
		model.addAttribute("Albums", albums);
		return new ModelAndView("redirect:/addMusic", "filename", "File Uploaded Successfully");
	}

	@RequestMapping(value = "/uploadMusic", method = RequestMethod.POST)
	public ModelAndView upload(@RequestParam("filename") List<CommonsMultipartFile> multipartFile,
			final HttpServletRequest request) throws IOException {

		String albumName = "";
		String albumId = request.getParameter("albumid");
		MusicAlbum album = null;
		if (StringUtils.isNotBlank(albumId)) {
			int id = Integer.parseInt(albumId);
			album = service.getSingleAlbum(id);
			albumName = album.getAlbumName();
		}
		int totalSong = 0;
		String albumimagepath = "/Files/default/default_album.jpg";

		for (CommonsMultipartFile commonsMultipartFile : multipartFile) {
			try {
				String filePath = UploadFile.uploadMusic(commonsMultipartFile, albumName);
				totalSong++;
				Music music = new Music();

				if (album != null) {
					music.setAlbumImage(album.getAlbumImage());
					music.setAlbumName(album.getAlbumName());
				}

				music.setDate(new Date());
				music.setDuration(AudioUtility.getDuration(filePath));
				music.setLink(filePath);
				music.setName(commonsMultipartFile.getOriginalFilename());
				music.setPath(filePath);
				music.setSize(commonsMultipartFile.getSize() / 1024 + "");
				music.setStatus("Active");
				music.setTime(new Date());
				music.setTitle(commonsMultipartFile.getOriginalFilename());
				music.setMusicAlbum(album);
				service.addMusic(music);

			} catch (Exception e) {
				System.out.println(e);
			}
		}
		if (album != null) {
			int ts = album.getTotalSongs();
			album.setTotalSongs(ts + totalSong);
			service.updateAlbum(album);
		}
		return new ModelAndView("redirect:/addMusic", "filename", "File Uploaded Successfully");
	}
}
