package org.arun.spring.utility;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.Charset;

import javax.sound.sampled.UnsupportedAudioFileException;

import javazoom.jl.player.Player;

import org.jaudiotagger.audio.AudioFile;
import org.jaudiotagger.audio.AudioFileIO;
import org.json.JSONException;
import org.json.JSONObject;

public class DNDSearch2 {
	public static final String apiKey = "tk2AW7aZfe5YtZUatSIB";
	public static final String mobileNumbers = "9583125185,9011822778,9437297787,9938428664,9938115699";

	public static void main(String[] args) throws IOException, JSONException {
		String url = "http://dndsearch.in/api.php?key=" + apiKey + "&mobileno="
				+ mobileNumbers;
		JSONObject json = readJsonFromUrl(url);
		// JSONArray article = json.getJSONArray("articles");
		System.out.println(json.get("ndnd").toString());
		System.out.println(json.get("invalidno"));
		System.out.println(json.get("duplicateno"));
		System.out.println(json.get("dnd"));
		System.out.println(json.get("totalno"));
	}

	private static String readAll(Reader rd) throws IOException {
		StringBuilder sb = new StringBuilder();
		int cp;
		while ((cp = rd.read()) != -1) {
			sb.append((char) cp);
		}
		return sb.toString();
	}

	public static JSONObject readJsonFromUrl(String url) throws IOException,
			JSONException {
		InputStream is = new URL(url).openStream();
		try {
			BufferedReader rd = new BufferedReader(new InputStreamReader(is,
					Charset.forName("UTF-8")));
			String jsonText = readAll(rd);
			JSONObject json = new JSONObject(jsonText);
			return json;
		} finally {
			is.close();
		}
	}

	public static void getDuration(String[] args)
			throws UnsupportedAudioFileException, IOException {
		try {

			File file = new File("D:\\111.mp3");
			FileInputStream fis = new FileInputStream(file);

			BufferedInputStream bis = new BufferedInputStream(fis);
			Player player = new Player(bis);

			int duration = 0;

			AudioFile audioFile = AudioFileIO.read(file);
			duration = audioFile.getAudioHeader().getTrackLength();
			System.out.print("time in Minutes=   " + (duration / 60) + ":"
					+ (duration % 60));

			player.play();
		} catch (Exception e) {

		}

	}
}
