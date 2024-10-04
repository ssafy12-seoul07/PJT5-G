DROP DATABASE IF EXISTS ssafy_strezino;
CREATE DATABASE ssafy_strezino DEFAULT CHARACTER SET utf8mb4;

USE ssafy_strezino;

-- 1. Video 테이블
CREATE TABLE Video (
    videoId INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    part VARCHAR(255) NOT NULL,
    channelName VARCHAR(100) NOT NULL,
    viewCnt INT DEFAULT 0,
    regDate DATE DEFAULT NOW()
);

-- 2. User 테이블
CREATE TABLE User (
    userId VARCHAR(30) PRIMARY KEY,
    username VARCHAR(10) NOT NULL,
    password VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    instagram VARCHAR(200),
    profileUrl VARCHAR(200)
);

-- 3. Review 테이블
CREATE TABLE Review (
    reviewId INT AUTO_INCREMENT PRIMARY KEY,
    videoId INT NOT NULL,
    content TEXT NOT NULL,
    regDate DATE DEFAULT NOW(),
    updateDate DATE,
    userId VARCHAR(30) NOT NULL,
    FOREIGN KEY (videoId) REFERENCES Video(videoId),
    FOREIGN KEY (userId) REFERENCES User(userId)
);

-- 4. Bookmark 테이블
CREATE TABLE Bookmark (
    videoId INT NOT NULL,
    userId VARCHAR(30) NOT NULL,
    PRIMARY KEY (videoId, userId),
    FOREIGN KEY (videoId) REFERENCES Video(videoId),
    FOREIGN KEY (userId) REFERENCES User(userId)
);

-- 5. Follow 테이블
CREATE TABLE Follow (
    userId VARCHAR(30) NOT NULL,
    followingId VARCHAR(30) NOT NULL,
    PRIMARY KEY (userId, followingId),
    FOREIGN KEY (userId) REFERENCES User(userId),
    FOREIGN KEY (followingId) REFERENCES User(userId)
);
