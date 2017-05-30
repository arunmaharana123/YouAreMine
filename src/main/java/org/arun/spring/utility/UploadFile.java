package org.arun.spring.utility;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.Calendar;
import java.util.Date;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class UploadFile {
	public static String newsImageUpload(String url, int count) throws IOException {
		String fileName = null;
		String aTempDir = null;
		String fileLocation = null;
		aTempDir = System.getProperty("catalina.base") + java.io.File.separator + "webapps" + java.io.File.separator
				+ "Files" + java.io.File.separator + "News";

		// File code
		String nameOfFIle;
		Calendar calendar = Calendar.getInstance();
		Date date = calendar.getTime();
		nameOfFIle = "News" + count + date.getTime();
		try {
			String[] originalFileName = url.split("\\.");
			String ext = originalFileName[originalFileName.length - 1];
			if ("jpg".equalsIgnoreCase(ext) || "gif".equalsIgnoreCase(ext) || "png".equalsIgnoreCase(ext)
					|| "bmp".equalsIgnoreCase(ext) || "jpeg".equalsIgnoreCase(ext)) {
				fileName = nameOfFIle + "." + originalFileName[originalFileName.length - 1];
			} else {
				fileName = nameOfFIle + "." + "jpg";
			}

		} catch (Exception e) {
			fileName = url;
		}

		fileLocation = aTempDir + java.io.File.separator + fileName;
		new java.io.File(aTempDir).mkdirs();

		try {
			URL imageUrl = new URL(url);
			URLConnection conn = imageUrl.openConnection();
			int size = conn.getContentLength();
			double kilobytes = (size / 1024);
			if (kilobytes < 1) {
				return null;
			}
			try (InputStream imageReader = new BufferedInputStream(imageUrl.openStream());
					OutputStream imageWriter = new BufferedOutputStream(new FileOutputStream(fileLocation));) {
				int readByte;

				while ((readByte = imageReader.read()) != -1) {
					imageWriter.write(readByte);
				}
			}
		} catch (Exception e) {
			return null;
		}
		return "/Files/News/" + fileName;

	}

	public static String uploadMusic(CommonsMultipartFile multipartFile, String albumName) throws IOException {
		String fileName = null;
		String aTempDir = null;
		String fileLocation = null;
		albumName = albumName.replace(' ', '_') + "_" + Calendar.getInstance().get(Calendar.YEAR);
		try {
			aTempDir = System.getProperty("catalina.base") + java.io.File.separator + "webapps" + java.io.File.separator
					+ "Files" + java.io.File.separator + "music" + java.io.File.separator + albumName;

			// File code
			String nameOfFIle;
			Calendar calendar = Calendar.getInstance();
			Date date = calendar.getTime();
			nameOfFIle = "music" + date.getTime();
			try {
				String[] originalFileName = multipartFile.getOriginalFilename().split("\\.");
				fileName = originalFileName[0] + nameOfFIle + "." + originalFileName[originalFileName.length - 1];
			} catch (Exception e) {
				fileName = multipartFile.getOriginalFilename();
			}

			fileLocation = aTempDir + java.io.File.separator + fileName;
			new java.io.File(aTempDir).mkdirs();

			java.io.File file = new java.io.File(fileLocation);
			FileOutputStream output = new FileOutputStream(file);
			output.write(multipartFile.getBytes());
			output.close();
		} catch (Exception e) {
			return null;
		}
		return "/Files/music/" + albumName + "/" + fileName;

	}
}
