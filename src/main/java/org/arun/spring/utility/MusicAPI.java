package org.arun.spring.utility;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.arun.spring.model.Music;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class MusicAPI {
	public static void main(String[] args) throws IOException, JSONException {
		getMusicData("");
	}

	public static List<Music> getMusicData(String string) throws IOException, JSONException {
		String text = new String(Files.readAllBytes(Paths.get("MusicStatic.json")), StandardCharsets.UTF_8);

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
}
