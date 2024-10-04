package com.ssaffy.video.model.service;

import java.util.List;

import com.ssaffy.video.model.Video;
import com.ssaffy.video.model.repository.VideoRepository;

public class VideoService {
	private static VideoService service = new VideoService();
	private VideoRepository repo = VideoRepository.getInstance();
	
	private VideoService() {
	}	
	
	public static VideoService getInstance() {
		return service;
	}

	public List<Video> getVideosByViews() {
		// TODO Auto-generated method stub
		return repo.getList();
	}
}
