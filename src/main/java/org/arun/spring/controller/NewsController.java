package org.arun.spring.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.arun.spring.model.CategoryNews;
import org.arun.spring.model.News;
import org.arun.spring.service.MyService;
import org.arun.spring.utility.JsonReader;
import org.arun.spring.utility.UploadFile;
import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NewsController {

	@Autowired
	MyService service;

	@RequestMapping(value = "/recentnews", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getRecentNews(Model model, final HttpServletRequest request) {

		int count = 0;
		String page = request.getParameter("page");

		if (page != null && page != "") {
			try {
				count = Integer.parseInt(page);
			} catch (NumberFormatException e) {
			}
		}

		List<News> news = service.getNews(count);

		model.addAttribute("NewsList", news);
		model.addAttribute("RecentNews", service.getNews(0));
		model.addAttribute("PageCount", ++count);
		return "news";
	}

	@RequestMapping(value = "/singleNews", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getSingleNews(Model model, final HttpServletRequest request) {

		String id = request.getParameter("id");
		List<News> news = service.getNews(0);

		model.addAttribute("NewsList", news);
		model.addAttribute("RecentNews", service.getSignleNews(id));
		return "singlenews";
	}

	@RequestMapping(value = "/updatenews", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getUpdateNews(Model model, final HttpServletRequest request) throws IOException, JSONException {

		List<News> news = JsonReader.getData("");
		int i = 0;
		for (News news2 : news) {
			boolean result = service.getNewsTitle(news2.getTitle());
			if (result == false) {
				String img = UploadFile.newsImageUpload(news2.getImage(), ++i);
				if (img != null)
					news2.setImage(img);
				service.addNews(news2);
			}

		}
		System.out.println("News Updated Successfully");

		return "redirect:/recentnews";
	}

	@RequestMapping(value = "/newscategory/*", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getCategoryNews(Model model, final HttpServletRequest request) throws IOException, JSONException {

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

		if ("Recent".equalsIgnoreCase(category)) {
			List<News> news = service.getNews(count);
			model.addAttribute("NewsList", news);
			model.addAttribute("RecentNews", service.getNews(0));
			model.addAttribute("CategoryForward", category);
		} else {
			List<CategoryNews> categoryNews = service.getNewsCategory(count, category);
			model.addAttribute("NewsList", categoryNews);
			model.addAttribute("RecentNews", service.getNewsCategory(0, category));
			model.addAttribute("CategoryForward", category);
		}

		model.addAttribute("PageCount", ++count);

		return "news";
	}

	@RequestMapping(value = "/updateAll", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getUpdateAll(Model model, final HttpServletRequest request) throws IOException, JSONException {

		// Sports News Updated
		List<CategoryNews> news = JsonReader.getSportsData("");
		int i = 0;
		for (CategoryNews news2 : news) {
			boolean result = service.getNewsCategoryTitle(news2.getTitle());
			if (result == false) {
				String img = UploadFile.newsImageUpload(news2.getImage(), ++i);
				if (img != null)
					news2.setImage(img);
				service.addCategoryNews(news2);
			}

		}

		// World News Updated
		news = JsonReader.getWorldData("");
		i = 0;
		for (CategoryNews news2 : news) {
			boolean result = service.getNewsCategoryTitle(news2.getTitle());
			if (result == false) {
				String img = UploadFile.newsImageUpload(news2.getImage(), ++i);
				if (img != null)
					news2.setImage(img);
				service.addCategoryNews(news2);
			}

		}

		// India News Updated
		news = JsonReader.getIndiaData("");
		i = 0;
		for (CategoryNews news2 : news) {
			boolean result = service.getNewsCategoryTitle(news2.getTitle());
			if (result == false) {
				String img = UploadFile.newsImageUpload(news2.getImage(), ++i);
				if (img != null)
					news2.setImage(img);
				service.addCategoryNews(news2);
			}

		}

		// Movies News Updated
		news = JsonReader.getMoviesData("");
		i = 0;
		for (CategoryNews news2 : news) {
			boolean result = service.getNewsCategoryTitle(news2.getTitle());
			if (result == false) {
				String img = UploadFile.newsImageUpload(news2.getImage(), ++i);
				if (img != null)
					news2.setImage(img);
				service.addCategoryNews(news2);
			}

		}
		// Economic News Updated
		news = JsonReader.getEconomicData("");
		i = 0;
		for (CategoryNews news2 : news) {
			boolean result = service.getNewsCategoryTitle(news2.getTitle());
			if (result == false) {
				String img = UploadFile.newsImageUpload(news2.getImage(), ++i);
				if (img != null)
					news2.setImage(img);
				service.addCategoryNews(news2);
			}

		}
		// Business News Updated
		news = JsonReader.getBusinessData("");
		i = 0;
		for (CategoryNews news2 : news) {
			boolean result = service.getNewsCategoryTitle(news2.getTitle());
			if (result == false) {
				String img = UploadFile.newsImageUpload(news2.getImage(), ++i);
				if (img != null)
					news2.setImage(img);
				service.addCategoryNews(news2);
			}

		}
		// Financial News Updated
		news = JsonReader.getFinancialData("");
		i = 0;
		for (CategoryNews news2 : news) {
			boolean result = service.getNewsCategoryTitle(news2.getTitle());
			if (result == false) {
				String img = UploadFile.newsImageUpload(news2.getImage(), ++i);
				if (img != null)
					news2.setImage(img);
				service.addCategoryNews(news2);
			}

		}
		// Tech News Updated
		news = JsonReader.getTechData("");
		i = 0;
		for (CategoryNews news2 : news) {
			boolean result = service.getNewsCategoryTitle(news2.getTitle());
			if (result == false) {
				String img = UploadFile.newsImageUpload(news2.getImage(), ++i);
				if (img != null)
					news2.setImage(img);
				service.addCategoryNews(news2);
			}

		}
		System.out.println("News Updated Successfully");

		return "redirect:/recentnews";
	}
}
