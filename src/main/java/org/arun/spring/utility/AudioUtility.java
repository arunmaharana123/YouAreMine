package org.arun.spring.utility;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;

import javazoom.jl.player.Player;

import org.jaudiotagger.audio.AudioFile;
import org.jaudiotagger.audio.AudioFileIO;

public class AudioUtility {

	public static String getDuration(String filePath) {
		try {

			File file = new File(filePath);
			FileInputStream fis = new FileInputStream(file);

			BufferedInputStream bis = new BufferedInputStream(fis);

			int duration = 0;

			AudioFile audioFile = AudioFileIO.read(file);
			duration = audioFile.getAudioHeader().getTrackLength();

			System.out.print("time in Minutes=   " + (duration / 60) + ":" + (duration % 60));
			return (duration / 60) + ":" + (duration % 60);
		} catch (Exception e) {
			System.out.println("Cathch");
		}
		return null;
	}
}
