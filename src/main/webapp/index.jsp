<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.ssaffy.video.model.Video" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>운동 비디오 목록</title>
    <!-- Bootstrap 추가 -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
</head>
<body class="container">
    <h2 class="my-4">운동 부위별 비디오 목록</h2>
    <div id="video-list" class="row">
        <%
            List<Video> videos = (List<Video>) request.getAttribute("videos");

            // Null 체크
            if (videos != null && !videos.isEmpty()) {
                for (Video video : videos) {
        %>
                    <div class="col-md-4 mb-4">
                        <div class="card">
                            <iframe class="card-img-top" src="<%= video.getUrl() %>" frameborder="0" allowfullscreen></iframe>
                            <div class="card-body">
                                <h5 class="card-title">제목: <%= video.getTitle() %></h5>
                                <p class="card-text">채널: <%= video.getChannelName() %></p>
                            </div>
                        </div>
                    </div>
        <%
                }
            } else {
        %>
                <p>해당 운동 부위에 대한 비디오가 없습니다.</p>
        <%
            }
        %>
    </div>

    <!-- Bootstrap JS 추가 -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
</body>
</html>
