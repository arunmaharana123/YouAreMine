package org.arun.spring.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/*
 * This is our model class and it corresponds to news table in database
 */
@Entity
@Table(name = "news")
public class News {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;

	@Column(name = "author")
	String author;

	@Column(name = "title")
	String title;

	@Column(name = "description")
	String description;

	@Column(name = "url")
	String url;

	@Column(name = "image")
	String image;

	@Column(name = "date")
	String date;

	@Column(name = "time")
	String time;

	@Column(name = "status")
	String status;

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public News() {
	}

	public News(int id, String author, String title, String description,
			String url, String image, String date, String time, String status) {
		super();
		this.id = id;
		this.author = author;
		this.title = title;
		this.description = description;
		this.url = url;
		this.image = image;
		this.date = date;
		this.time = time;
		this.status = status;
	}

}