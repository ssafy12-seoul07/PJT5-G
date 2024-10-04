package com.ssaffy.video.model.repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ssaffy.video.model.Video;

public class VideoRepository {
private static VideoRepository repo = new VideoRepository();
	
	//게시글을 관리를 하겠다.
	//메모리를 DB라고 생각
//	private List<Board> list = new ArrayList<>();	//리스트로 관리 (해볼것)
	private Map<Integer, Video> boards = new HashMap<>(); //맵으로 관리 V
	
	
	
	private VideoRepository() {
		boards.put(0, new Video());
	}
	
	public static VideoRepository getInstance() {
		return repo;
	}

	public List<Video> getList() {
		return new ArrayList<>(boards.values());
	}
}
