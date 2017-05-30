package org.arun.spring.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/*
 * This is our model class and it corresponds to music table in database
 */
@Entity
@Table(name = "music")
public class Music {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;

	@Column(name = "name")
	String name;

	@Column(name = "title")
	String title;

	@Column(name = "singer")
	String singer;

	@Column(name = "music_director")
	String musicDirector;

	@Column(name = "lyricsist")
	String lyricsist;

	@Column(name = "date")
	Date date;

	@Column(name = "time")
	Date time;

	@Column(name = "link")
	String link;

	@Column(name = "path")
	String path;

	@Column(name = "duration")
	String duration;

	@Column(name = "size")
	String size;

	@Column(name = "album_name")
	String albumName;

	@Column(name = "album_image")
	String albumImage;

	@Column(name = "actors")
	String actors;

	@Column(name = "status")
	String status;

	@Column(name = "category")
	String category;

	@Column(name = "tags")
	String tags;
	
	@ManyToOne(cascade = { CascadeType.ALL })
	@JoinColumn(name = "album_id")
	MusicAlbum musicAlbum;

	public Music(int id, String name, String title, String singer, String musicDirector, String lyricsist, Date date,
			Date time, String link, String path, String duration, String size, String albumName, String albumImage,
			String actors, String status, String category, String tags) {
		super();
		this.id = id;
		this.name = name;
		this.title = title;
		this.singer = singer;
		this.musicDirector = musicDirector;
		this.lyricsist = lyricsist;
		this.date = date;
		this.time = time;
		this.link = link;
		this.path = path;
		this.duration = duration;
		this.size = size;
		this.albumName = albumName;
		this.albumImage = albumImage;
		this.actors = actors;
		this.status = status;
		this.category = category;
		this.tags = tags;
	}

	public Music() {
		super();
	}

	public MusicAlbum getMusicAlbum() {
		return musicAlbum;
	}

	public void setMusicAlbum(MusicAlbum musicAlbum) {
		this.musicAlbum = musicAlbum;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSinger() {
		return singer;
	}

	public void setSinger(String singer) {
		this.singer = singer;
	}

	public String getMusicDirector() {
		return musicDirector;
	}

	public void setMusicDirector(String musicDirector) {
		this.musicDirector = musicDirector;
	}

	public String getLyricsist() {
		return lyricsist;
	}

	public void setLyricsist(String lyricsist) {
		this.lyricsist = lyricsist;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getAlbumName() {
		return albumName;
	}

	public void setAlbumName(String albumName) {
		this.albumName = albumName;
	}

	public String getAlbumImage() {
		return albumImage;
	}

	public void setAlbumImage(String albumImage) {
		this.albumImage = albumImage;
	}

	public String getActors() {
		return actors;
	}

	public void setActors(String actors) {
		this.actors = actors;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getTags() {
		return tags;
	}

	public void setTags(String tags) {
		this.tags = tags;
	}

}