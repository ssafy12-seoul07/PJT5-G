package com.ssaffy.video.controller;

import java.io.IOException;
import java.util.List;

import com.ssaffy.video.model.Video;
import com.ssaffy.video.model.service.VideoService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/index")
public class VideoController extends HttpServlet {
    private VideoService videoService = VideoService.getInstance();

    @Override
    public void init() throws ServletException {
        // 서블릿이 로드될 때, 초기 데이터를 설정하는 부분
        List<Video> videos = videoService.getVideosByViews();
        getServletContext().setAttribute("videos", videos);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // videos는 이미 init에서 세팅되었으므로 별도의 request 없이도 가져올 수 있음
        List<Video> videos = (List<Video>) getServletContext().getAttribute("videos");

        request.setAttribute("videos", videos);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/src/html/index.jsp");
        dispatcher.forward(request, response);
    }
}
