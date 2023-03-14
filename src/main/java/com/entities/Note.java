package com.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "notes")
public class Note {
	@Id
	private long id;
	private String title;
	@Column(length = 1500)
	private String content;
	private Date addedDate;
	public Note() {
		super();
	}
	public Note(String title, String content, Date addedDate) {
		super();
		this.id = new Date().getTime();
		this.title = title;
		this.content = content;
		this.addedDate = addedDate;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getAddedDate() {
		return addedDate;
	}
	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}
}
