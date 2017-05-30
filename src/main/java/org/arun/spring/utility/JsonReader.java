package org.arun.spring.utility;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.arun.spring.constant.MyConstatnts;
import org.arun.spring.model.CategoryNews;
import org.arun.spring.model.Music;
import org.arun.spring.model.News;
import org.arun.spring.model.Video;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class JsonReader {

	private static String readAll(Reader rd) throws IOException {
		StringBuilder sb = new StringBuilder();
		int cp;
		while ((cp = rd.read()) != -1) {
			sb.append((char) cp);
		}
		return sb.toString();
	}

	public static JSONObject readJsonFromUrl(String url) throws IOException, JSONException {
		InputStream is = new URL(url).openStream();
		try {
			BufferedReader rd = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
			String jsonText = readAll(rd);
			JSONObject json = new JSONObject(jsonText);
			return json;
		} finally {
			is.close();
		}
	}

	public static List<News> getData(String abc) throws IOException, JSONException {

		List<News> news = new ArrayList<>();

		ArrayList<String> links = new ArrayList<>();
		links.add(
				"https://newsapi.org/v1/articles?source=hacker-news&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=google-news&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=national-geographic&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=the-guardian-au&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");

		links.add(
				"https://newsapi.org/v1/articles?source=the-hindu&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");
		links.add("https://newsapi.org/v1/articles?source=time&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=the-times-of-india&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");
		links.add("https://newsapi.org/v1/articles?source=cnn&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");

		links.add(
				"https://newsapi.org/v1/articles?source=espn-cric-info&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=financial-times&sortBy=latest&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=the-times-of-india&sortBy=latest&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=espn-cric-info&sortBy=latest&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=the-hindu&sortBy=latest&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=hacker-news&sortBy=latest&apiKey=aaad472329dd401392221367ef6d4819");

		for (String link : links) {
			JSONObject json = readJsonFromUrl(link);
			JSONArray article = json.getJSONArray("articles");

			for (int i = 0; i < article.length(); i++) {

				JSONObject jsonObject = article.getJSONObject(i);
				Object object = jsonObject.get("author");
				News news2 = new News();
				if (object != JSONObject.NULL)
					news2.setAuthor(jsonObject.get("author").toString());

				object = jsonObject.get("publishedAt");

				if ((object != JSONObject.NULL)) {
					String date = jsonObject.get("publishedAt").toString();
					if (date != null) {
						news2.setDate(date.substring(0, 10));
						news2.setTime(date.substring(12, 19));
					}

				}

				object = jsonObject.get("description");

				if (object != JSONObject.NULL)
					news2.setDescription(jsonObject.get("description").toString());

				news2.setStatus("Active");

				object = jsonObject.get("title");

				if (object != JSONObject.NULL)
					news2.setTitle(jsonObject.get("title").toString());

				object = jsonObject.get("url");

				if (object != JSONObject.NULL)
					news2.setUrl(jsonObject.get("url").toString());

				object = jsonObject.get("urlToImage");

				if (object != JSONObject.NULL)
					news2.setImage(jsonObject.get("urlToImage").toString());
				else {
					continue;
				}

				news.add(news2);

			}
		}

		return news;

	}

	public static List<CategoryNews> getSportsData(String category) throws IOException, JSONException {
		List<CategoryNews> news = new ArrayList<>();

		ArrayList<String> links = new ArrayList<>();
		links.add(
				"https://newsapi.org/v1/articles?source=espn-cric-info&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=espn-cric-info&sortBy=latest&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=bbc-sport&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");

		links.add("https://newsapi.org/v1/articles?source=espn&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=fox-sports&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=talksport&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");

		links.add(
				"https://newsapi.org/v1/articles?source=talksport&sortBy=latest&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=the-sport-bible&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");

		for (String link : links) {
			JSONObject json = readJsonFromUrl(link);
			JSONArray article = json.getJSONArray("articles");

			for (int i = 0; i < article.length(); i++) {

				JSONObject jsonObject = article.getJSONObject(i);
				Object object = jsonObject.get("author");
				CategoryNews news2 = new CategoryNews();
				if (object != JSONObject.NULL)
					news2.setAuthor(jsonObject.get("author").toString());

				object = jsonObject.get("publishedAt");

				if ((object != JSONObject.NULL)) {
					String date = jsonObject.get("publishedAt").toString();
					if (date != null) {
						news2.setDate(date.substring(0, 10));
						news2.setTime(date.substring(12, 19));
					}

				}

				object = jsonObject.get("description");

				if (object != JSONObject.NULL)
					news2.setDescription(jsonObject.get("description").toString());

				news2.setStatus("Active");

				object = jsonObject.get("title");

				if (object != JSONObject.NULL)
					news2.setTitle(jsonObject.get("title").toString());

				object = jsonObject.get("url");

				if (object != JSONObject.NULL)
					news2.setUrl(jsonObject.get("url").toString());

				object = jsonObject.get("urlToImage");

				if (object != JSONObject.NULL)
					news2.setImage(jsonObject.get("urlToImage").toString());
				else {
					continue;
				}
				news2.setCategory("Sports");
				news.add(news2);

			}
		}

		return news;
	}

	public static void main(String[] args) throws IOException, JSONException {
		getYoutubeData();
	}

	public static List<Music> getMusicData(String string) throws IOException, JSONException {
		String text = new String(Files.readAllBytes(Paths.get("D://111.json")), StandardCharsets.UTF_8);

		JSONObject obj = new JSONObject(text);
		List<Music> news = new ArrayList<>();

		JSONArray article = obj.getJSONArray("aTracks");

		for (int i = 0; i < article.length(); i++) {

			JSONObject jsonObject = article.getJSONObject(i);
			Object object = jsonObject.get("track_duration");
			System.out.println(object.toString());

			Music music = new Music();
			if (jsonObject.get("artist_name") != JSONObject.NULL) {
				music.setActors(jsonObject.get("artist_name").toString());
			}

			music.setCategory("English");
			music.setDate(new Date());
			music.setLyricsist("");
			music.setMusicDirector("");
			music.setSinger("");
			music.setStatus("Active");
			music.setTags("English");
			music.setTime(new Date());

			if (jsonObject.get("track_duration") != JSONObject.NULL) {
				music.setDuration(jsonObject.get("track_duration").toString());
			}

			if (jsonObject.get("track_url") != JSONObject.NULL) {
				music.setLink(jsonObject.get("track_url").toString());
			}

			if (jsonObject.get("album_title") != JSONObject.NULL) {
				music.setName(jsonObject.get("album_title").toString());
			}

			if (jsonObject.get("track_url") != JSONObject.NULL) {
				music.setPath(jsonObject.get("track_url").toString());
			}

			/*
			 * if(jsonObject.get("track_duration") != JSONObject.NULL){
			 * music.setSize(jsonObject.get("track_duration").toString()); }
			 */

			if (jsonObject.get("album_title") != JSONObject.NULL) {
				music.setTitle(jsonObject.get("album_title").toString());
			}

			if (jsonObject.get("track_image_file") != JSONObject.NULL) {
				music.setAlbumImage(jsonObject.get("track_image_file").toString());
			}

			if (jsonObject.get("album_title") != JSONObject.NULL) {
				music.setAlbumName(jsonObject.get("track_duration").toString());
			}
			music.setStatus("Active");
			news.add(music);
		}

		return news;
	}

	public static List<CategoryNews> getWorldData(String string) throws IOException, JSONException {
		List<CategoryNews> news = new ArrayList<>();

		ArrayList<String> links = new ArrayList<>();
		links.add(
				"https://newsapi.org/v1/articles?source=abc-news-au&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=the-guardian-au&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=hacker-news&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=google-news&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=national-geographic&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");

		for (String link : links) {
			JSONObject json = readJsonFromUrl(link);
			JSONArray article = json.getJSONArray("articles");

			for (int i = 0; i < article.length(); i++) {

				JSONObject jsonObject = article.getJSONObject(i);
				Object object = jsonObject.get("author");
				CategoryNews news2 = new CategoryNews();
				if (object != JSONObject.NULL)
					news2.setAuthor(jsonObject.get("author").toString());

				object = jsonObject.get("publishedAt");

				if ((object != JSONObject.NULL)) {
					String date = jsonObject.get("publishedAt").toString();
					if (date != null) {
						news2.setDate(date.substring(0, 10));
						news2.setTime(date.substring(12, 19));
					}

				}

				object = jsonObject.get("description");

				if (object != JSONObject.NULL)
					news2.setDescription(jsonObject.get("description").toString());

				news2.setStatus("Active");

				object = jsonObject.get("title");

				if (object != JSONObject.NULL)
					news2.setTitle(jsonObject.get("title").toString());

				object = jsonObject.get("url");

				if (object != JSONObject.NULL)
					news2.setUrl(jsonObject.get("url").toString());

				object = jsonObject.get("urlToImage");

				if (object != JSONObject.NULL)
					news2.setImage(jsonObject.get("urlToImage").toString());
				else {
					continue;
				}
				news2.setCategory("World");
				news.add(news2);

			}
		}

		return news;
	}

	public static List<CategoryNews> getIndiaData(String string) throws IOException, JSONException {
		List<CategoryNews> news = new ArrayList<>();

		ArrayList<String> links = new ArrayList<>();
		links.add(
				"https://newsapi.org/v1/articles?source=the-hindu&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=the-times-of-india&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=the-hindu&sortBy=latest&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=the-times-of-india&sortBy=latest&apiKey=aaad472329dd401392221367ef6d4819");
		for (String link : links) {
			JSONObject json = readJsonFromUrl(link);
			JSONArray article = json.getJSONArray("articles");

			for (int i = 0; i < article.length(); i++) {

				JSONObject jsonObject = article.getJSONObject(i);
				Object object = jsonObject.get("author");
				CategoryNews news2 = new CategoryNews();
				if (object != JSONObject.NULL)
					news2.setAuthor(jsonObject.get("author").toString());

				object = jsonObject.get("publishedAt");

				if ((object != JSONObject.NULL)) {
					String date = jsonObject.get("publishedAt").toString();
					if (date != null) {
						news2.setDate(date.substring(0, 10));
						news2.setTime(date.substring(12, 19));
					}

				}

				object = jsonObject.get("description");

				if (object != JSONObject.NULL)
					news2.setDescription(jsonObject.get("description").toString());

				news2.setStatus("Active");

				object = jsonObject.get("title");

				if (object != JSONObject.NULL)
					news2.setTitle(jsonObject.get("title").toString());

				object = jsonObject.get("url");

				if (object != JSONObject.NULL)
					news2.setUrl(jsonObject.get("url").toString());

				object = jsonObject.get("urlToImage");

				if (object != JSONObject.NULL)
					news2.setImage(jsonObject.get("urlToImage").toString());
				else {
					continue;
				}
				news2.setCategory("India");
				news.add(news2);

			}
		}

		return news;
	}

	public static List<CategoryNews> getMoviesData(String string) throws IOException, JSONException {
		List<CategoryNews> news = new ArrayList<>();

		ArrayList<String> links = new ArrayList<>();
		links.add(
				"https://newsapi.org/v1/articles?source=mtv-news&sortBy=latest&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=entertainment-weekly&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");
		links.add("https://newsapi.org/v1/articles?source=ign&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=mtv-news-uk&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");
		for (String link : links) {
			JSONObject json = readJsonFromUrl(link);
			JSONArray article = json.getJSONArray("articles");

			for (int i = 0; i < article.length(); i++) {

				JSONObject jsonObject = article.getJSONObject(i);
				Object object = jsonObject.get("author");
				CategoryNews news2 = new CategoryNews();
				if (object != JSONObject.NULL)
					news2.setAuthor(jsonObject.get("author").toString());

				object = jsonObject.get("publishedAt");

				if ((object != JSONObject.NULL)) {
					String date = jsonObject.get("publishedAt").toString();
					if (date != null) {
						news2.setDate(date.substring(0, 10));
						news2.setTime(date.substring(12, 19));
					}

				}

				object = jsonObject.get("description");

				if (object != JSONObject.NULL)
					news2.setDescription(jsonObject.get("description").toString());

				news2.setStatus("Active");

				object = jsonObject.get("title");

				if (object != JSONObject.NULL)
					news2.setTitle(jsonObject.get("title").toString());

				object = jsonObject.get("url");

				if (object != JSONObject.NULL)
					news2.setUrl(jsonObject.get("url").toString());

				object = jsonObject.get("urlToImage");

				if (object != JSONObject.NULL)
					news2.setImage(jsonObject.get("urlToImage").toString());
				else {
					continue;
				}
				news2.setCategory("Movies");
				news.add(news2);

			}
		}

		return news;
	}

	public static List<CategoryNews> getEconomicData(String string) throws IOException, JSONException {
		List<CategoryNews> news = new ArrayList<>();

		ArrayList<String> links = new ArrayList<>();
		links.add(
				"https://newsapi.org/v1/articles?source=the-economist&sortBy=latest&apiKey=aaad472329dd401392221367ef6d4819");
		links.add("https://newsapi.org/v1/articles?source=buzzfeed&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=business-insider&sortBy=latest&apiKey=aaad472329dd401392221367ef6d4819");

		for (String link : links) {
			JSONObject json = readJsonFromUrl(link);
			JSONArray article = json.getJSONArray("articles");

			for (int i = 0; i < article.length(); i++) {

				JSONObject jsonObject = article.getJSONObject(i);
				Object object = jsonObject.get("author");
				CategoryNews news2 = new CategoryNews();
				if (object != JSONObject.NULL)
					news2.setAuthor(jsonObject.get("author").toString());

				object = jsonObject.get("publishedAt");

				if ((object != JSONObject.NULL)) {
					String date = jsonObject.get("publishedAt").toString();
					if (date != null) {
						news2.setDate(date.substring(0, 10));
						news2.setTime(date.substring(12, 19));
					}

				}

				object = jsonObject.get("description");

				if (object != JSONObject.NULL)
					news2.setDescription(jsonObject.get("description").toString());

				news2.setStatus("Active");

				object = jsonObject.get("title");

				if (object != JSONObject.NULL)
					news2.setTitle(jsonObject.get("title").toString());

				object = jsonObject.get("url");

				if (object != JSONObject.NULL)
					news2.setUrl(jsonObject.get("url").toString());

				object = jsonObject.get("urlToImage");

				if (object != JSONObject.NULL)
					news2.setImage(jsonObject.get("urlToImage").toString());
				else {
					continue;
				}
				news2.setCategory("Economic");
				news.add(news2);

			}
		}

		return news;
	}

	public static List<CategoryNews> getBusinessData(String string) throws IOException, JSONException {
		List<CategoryNews> news = new ArrayList<>();

		ArrayList<String> links = new ArrayList<>();
		links.add(
				"https://newsapi.org/v1/articles?source=business-insider&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=business-insider-uk&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=fortune&sortBy=latest&apiKey=aaad472329dd401392221367ef6d4819");

		for (String link : links) {
			JSONObject json = readJsonFromUrl(link);
			JSONArray article = json.getJSONArray("articles");

			for (int i = 0; i < article.length(); i++) {

				JSONObject jsonObject = article.getJSONObject(i);
				Object object = jsonObject.get("author");
				CategoryNews news2 = new CategoryNews();
				if (object != JSONObject.NULL)
					news2.setAuthor(jsonObject.get("author").toString());

				object = jsonObject.get("publishedAt");

				if ((object != JSONObject.NULL)) {
					String date = jsonObject.get("publishedAt").toString();
					if (date != null) {
						news2.setDate(date.substring(0, 10));
						news2.setTime(date.substring(12, 19));
					}

				}

				object = jsonObject.get("description");

				if (object != JSONObject.NULL)
					news2.setDescription(jsonObject.get("description").toString());

				news2.setStatus("Active");

				object = jsonObject.get("title");

				if (object != JSONObject.NULL)
					news2.setTitle(jsonObject.get("title").toString());

				object = jsonObject.get("url");

				if (object != JSONObject.NULL)
					news2.setUrl(jsonObject.get("url").toString());

				object = jsonObject.get("urlToImage");

				if (object != JSONObject.NULL)
					news2.setImage(jsonObject.get("urlToImage").toString());
				else {
					continue;
				}
				news2.setCategory("Business");
				news.add(news2);

			}
		}

		return news;
	}

	public static List<CategoryNews> getFinancialData(String string) throws IOException, JSONException {
		List<CategoryNews> news = new ArrayList<>();

		ArrayList<String> links = new ArrayList<>();
		links.add(
				"https://newsapi.org/v1/articles?source=financial-times&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=financial-times&sortBy=latest&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=buzzfeed&sortBy=latest&apiKey=aaad472329dd401392221367ef6d4819");

		for (String link : links) {
			JSONObject json = readJsonFromUrl(link);
			JSONArray article = json.getJSONArray("articles");

			for (int i = 0; i < article.length(); i++) {

				JSONObject jsonObject = article.getJSONObject(i);
				Object object = jsonObject.get("author");
				CategoryNews news2 = new CategoryNews();
				if (object != JSONObject.NULL)
					news2.setAuthor(jsonObject.get("author").toString());

				object = jsonObject.get("publishedAt");

				if ((object != JSONObject.NULL)) {
					String date = jsonObject.get("publishedAt").toString();
					if (date != null) {
						news2.setDate(date.substring(0, 10));
						news2.setTime(date.substring(12, 19));
					}

				}

				object = jsonObject.get("description");

				if (object != JSONObject.NULL)
					news2.setDescription(jsonObject.get("description").toString());

				news2.setStatus("Active");

				object = jsonObject.get("title");

				if (object != JSONObject.NULL)
					news2.setTitle(jsonObject.get("title").toString());

				object = jsonObject.get("url");

				if (object != JSONObject.NULL)
					news2.setUrl(jsonObject.get("url").toString());

				object = jsonObject.get("urlToImage");

				if (object != JSONObject.NULL)
					news2.setImage(jsonObject.get("urlToImage").toString());
				else {
					continue;
				}
				news2.setCategory("Financial");
				news.add(news2);

			}
		}

		return news;
	}

	public static List<CategoryNews> getTechData(String string) throws IOException, JSONException {
		List<CategoryNews> news = new ArrayList<>();

		ArrayList<String> links = new ArrayList<>();
		links.add(
				"https://newsapi.org/v1/articles?source=new-scientist&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=techradar&sortBy=latest&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=techcrunch&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");

		links.add("https://newsapi.org/v1/articles?source=recode&sortBy=top&apiKey=aaad472329dd401392221367ef6d4819");
		links.add(
				"https://newsapi.org/v1/articles?source=hacker-news&sortBy=latest&apiKey=aaad472329dd401392221367ef6d4819");

		for (String link : links) {
			JSONObject json = readJsonFromUrl(link);
			JSONArray article = json.getJSONArray("articles");

			for (int i = 0; i < article.length(); i++) {

				JSONObject jsonObject = article.getJSONObject(i);
				Object object = jsonObject.get("author");
				CategoryNews news2 = new CategoryNews();
				if (object != JSONObject.NULL)
					news2.setAuthor(jsonObject.get("author").toString());

				object = jsonObject.get("publishedAt");

				if ((object != JSONObject.NULL)) {
					String date = jsonObject.get("publishedAt").toString();
					if (date != null) {
						news2.setDate(date.substring(0, 10));
						news2.setTime(date.substring(12, 19));
					}

				}

				object = jsonObject.get("description");

				if (object != JSONObject.NULL)
					news2.setDescription(jsonObject.get("description").toString());

				news2.setStatus("Active");

				object = jsonObject.get("title");

				if (object != JSONObject.NULL)
					news2.setTitle(jsonObject.get("title").toString());

				object = jsonObject.get("url");

				if (object != JSONObject.NULL)
					news2.setUrl(jsonObject.get("url").toString());

				object = jsonObject.get("urlToImage");

				if (object != JSONObject.NULL)
					news2.setImage(jsonObject.get("urlToImage").toString());
				else {
					continue;
				}
				news2.setCategory("Technology");
				news.add(news2);

			}
		}

		return news;
	}

	public static List<Video> getYoutubeData() throws IOException, JSONException {
		List<Video> videos = new ArrayList<>();
		JSONObject json = readJsonFromUrl(MyConstatnts.youtubeSearch);
		JSONArray article = json.getJSONArray("items");

		for (int i = 0; i < article.length(); i++) {
			try {
				JSONObject jsonObject = article.getJSONObject(i);
				String videoId = jsonObject.get("id").toString();

				JSONObject snippetObject = (JSONObject) jsonObject.get("snippet");

				String name = snippetObject.get("title").toString();
				// String tags = snippetObject.get("title").toString();

				JSONObject thumbnails = (JSONObject) snippetObject.get("thumbnails");
				JSONObject high = (JSONObject) thumbnails.get("high");
				String image = high.get("url").toString();

				Video video = new Video();
				video.setYoutubeId(videoId);
				video.setDate(new Date());
				video.setName(name);
				video.setPath("https://www.youtube.com/embed/" + videoId);
				video.setSize(0);
				video.setStatus("Active");
				video.setTag("");
				video.setTime(new Date());
				video.setType("YouTube");
				video.setImage(image);
				videos.add(video);
			} catch (Exception e) {
			}

		}

		return videos;
	}

	public static List<Video> getYoutubeSearchData(String keyWord) throws IOException, JSONException {
		List<Video> videos = new ArrayList<>();

		JSONObject json = readJsonFromUrl("https://www.googleapis.com/youtube/v3/search?q=" + keyWord
				+ "&part=snippet&order=viewCount&maxResults=50&regionCode=IN&key=AIzaSyAQGvh9pc5U8phL-DBKpG1kxMUwu4YUlX4");
		JSONArray article = json.getJSONArray("items");

		for (int i = 0; i < article.length(); i++) {

			try {
				JSONObject jsonObject = article.getJSONObject(i);
				JSONObject videoObj = (JSONObject) jsonObject.get("id");
				String videoId = videoObj.get("videoId").toString();

				JSONObject snippetObject = (JSONObject) jsonObject.get("snippet");

				JSONObject thumbnails = (JSONObject) snippetObject.get("thumbnails");
				JSONObject high = (JSONObject) thumbnails.get("high");
				String image = high.get("url").toString();

				String name = snippetObject.get("title").toString();
				// String tags = snippetObject.get("title").toString();

				Video video = new Video();
				video.setYoutubeId(videoId);
				video.setDate(new Date());
				video.setName(name);
				video.setPath("https://www.youtube.com/embed/" + videoId);
				video.setSize(0);
				video.setStatus("Active");
				video.setTag("");
				video.setTime(new Date());
				video.setType("YouTube");
				video.setImage(image);
				videos.add(video);
			} catch (Exception e) {
			}

		}
		return videos;
	}
}