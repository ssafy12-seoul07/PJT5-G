package com.ssaffy.video.model;

public class Video {
	private String url;
	private String title;
	private String channelName;
	
	
	public Video() {
		super();
	}


	public Video(String url, String title, String channelName) {
		super();
		this.url = url;
		this.title = title;
		this.channelName = channelName;
	}


	public String getUrl() {
		return url;
	}


	public void setUrl(String url) {
		this.url = url;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getChannelName() {
		return channelName;
	}


	public void setChannelName(String channelName) {
		this.channelName = channelName;
	}
	
	
}
