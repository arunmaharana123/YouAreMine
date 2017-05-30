package org.arun.spring.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.arun.spring.constant.MyConstatnts;
import org.arun.spring.model.CategoryNews;
import org.arun.spring.model.News;
import org.arun.spring.model.Photo;
import org.arun.spring.service.MyService;
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
public class PhotoController {

	@Autowired
	MyService service;

	@RequestMapping(value = "/photo", method = RequestMethod.GET, headers = "Accept=application/json")
	public String uploadPhotos(Model model, final HttpServletRequest request) {

		int count = 0;
		String page = request.getParameter("page");

		if (page != null && page != "") {
			try {
				count = Integer.parseInt(page);
			} catch (NumberFormatException e) {
			}
		}

		List<Photo> photos = service.getPhotos(count);
		model.addAttribute("PhotoList", photos);
		model.addAttribute("PageCount", ++count);
		model.addAttribute("Category", "Recent");
		return "photo";
	}

	@RequestMapping(value = "/photocategory/*", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getCategoryPhoto(Model model, final HttpServletRequest request) throws IOException, JSONException {

		int count = 0;
		String page = request.getParameter("page");
		if (page != null && page != "") {
			try {
				count = Integer.parseInt(page);
			} catch (NumberFormatException e) {
			}
		}

		String url = request.getRequestURI();
		String[] urls = url.split("/");
		for (String string : urls) {
			System.out.println(string);
		}
		String category = "Recent";
		if (urls.length > 3) {
			category = urls[3];
		}

		List<Photo> photos = service.getCategoryPhotos(count, category.replaceAll("%20", " "));
		model.addAttribute("PhotoList", photos);
		model.addAttribute("PageCount", ++count);
		model.addAttribute("Category", category);
		return "photo";
	}

	@RequestMapping(value = "/addPhoto", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getAddPhoto(Model model, final HttpServletRequest request) throws IOException, JSONException {
		model.addAttribute("CategoryList", MyConstatnts.category);
		return "addPhoto";
	}

	@RequestMapping(value = "/uploadPhoto", method = RequestMethod.POST)
	public ModelAndView upload(@RequestParam("filename") List<CommonsMultipartFile> multipartFile,
			@RequestParam("tagname") String tagname, @RequestParam("category") String category, HttpSession session) {

		int i = 0;
		for (CommonsMultipartFile commonsMultipartFile : multipartFile) {
			String fileName = null;
			String aTempDir = null;
			String fileLocation = null;
			try {
				aTempDir = System.getProperty("catalina.base") + java.io.File.separator + "webapps"
						+ java.io.File.separator + "Files" + java.io.File.separator + "photo" + java.io.File.separator
						+ category.replaceAll(" ", "_");

				// File code
				String nameOfFIle;
				Calendar calendar = Calendar.getInstance();
				Date date = calendar.getTime();
				nameOfFIle = "Photo" + i + date.getTime();
				i++;
				try {
					String[] originalFileName = commonsMultipartFile.getOriginalFilename().split("\\.");
					fileName = nameOfFIle + "." + originalFileName[originalFileName.length - 1];
				} catch (Exception e) {
					fileName = commonsMultipartFile.getOriginalFilename();
				}

				fileLocation = aTempDir + java.io.File.separator + fileName;
				new java.io.File(aTempDir).mkdirs();

				java.io.File file = new java.io.File(fileLocation);
				FileOutputStream output = new FileOutputStream(file);
				output.write(commonsMultipartFile.getBytes());
				output.close();

				Photo photo = new Photo();
				photo.setPath("/Files/photo/" + category.replaceAll(" ", "_") + "/" + fileName);
				photo.setSize(commonsMultipartFile.getSize() / 1024);
				photo.setCategory(category);
				photo.setDate(new Date());
				photo.setTag(tagname);
				photo.setTime(new Date());
				service.savePhoto(photo);

			} catch (Exception e) {
				System.out.println(e);
			}
		}

		return new ModelAndView("redirect:/addPhoto", "filename", "File Uploaded Successfully");
	}
}
