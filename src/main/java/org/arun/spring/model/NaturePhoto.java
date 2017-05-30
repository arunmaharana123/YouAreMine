package org.arun.spring.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/*
 * This is our model class and it corresponds to nature_photos table in database
 */
@Entity
@Table(name = "nature_photos")
public class NaturePhoto {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;

	@Column(name = "path")
	String path;

	@Column(name = "size")
	long size;

	@Column(name = "tags")
	String tags;

	@Column(name = "category")
	String category;

	@Column(name = "status")
	String status;

	@Column(name = "date")
	Date date;

	@Column(name = "time")
	Date time;

	public String getTags() {
		return tags;
	}

	public void setTags(String tags) {
		this.tags = tags;
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

	public NaturePhoto() {
		super();
	}

	public NaturePhoto(int id, String path, long size, String tags,
			String category, String status, Date date, Date time) {
		super();
		this.id = id;
		this.path = path;
		this.size = size;
		this.tags = tags;
		this.category = category;
		this.status = status;
		this.date = date;
		this.time = time;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
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

}