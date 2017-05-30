package org.arun.spring.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.NotFound;

/*
 * This is our model class and it corresponds to video table in database
 */
@Entity
@Table(name = "video")
public class Video {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;

	@Column(name = "path")
	String path;

	@Column(name = "size")
	long size;

	@Column(name = "name")
	String name;

	@Column(name = "tag")
	String tag;
	@Column(name = "type")
	String type;

	@Column(name = "status")
	String status;

	@Column(name = "date")
	Date date;

	@Column(name = "time")
	Date time;

	@Column(name = "youtube_id")
	String youtubeId;

	@Column(name = "image")
	String image;

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getYoutubeId() {
		return youtubeId;
	}

	public void setYoutubeId(String youtubeId) {
		this.youtubeId = youtubeId;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
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

	public Video() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public long getSize() {
		return size;
	}

	public void setSize(long size) {
		this.size = size;
	}

	public Video(int id, String path, long size, String name, String tag, String status, Date date, Date time) {
		super();
		this.id = id;
		this.path = path;
		this.size = size;
		this.name = name;
		this.tag = tag;
		this.status = status;
		this.date = date;
		this.time = time;
	}

}