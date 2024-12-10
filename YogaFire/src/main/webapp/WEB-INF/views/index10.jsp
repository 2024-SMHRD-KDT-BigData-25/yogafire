<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>시퀀스 실행 페이지</title>
<link rel="stylesheet" href="css/index10.css">
<link rel="stylesheet" href="css/fire.css">
</head>
<body>
<header class="topheader">
	<h1>시퀀스 이름</h1>
	<h2>현 요가 자세</h2>
</header>
<div class="container">
  <iframe class="yogavideo" src="https://youtube.com/embed/mJKHGA3tMdU?autoplay=1" allow="autoplay" ></iframe>
  <video id="video" autoplay></video>
    <script>
        // JavaScript로 카메라 화면 접근
        const video = document.getElementById('video');

        // getUserMedia를 사용하여 카메라 스트림 가져오기
        navigator.mediaDevices.getUserMedia({ video: true })
            .then(stream => {
                video.srcObject = stream;
            })
            .catch(error => {
                console.error("카메라에 접근할 수 없습니다:", error);
                alert("카메라에 접근할 수 없습니다. 권한을 확인하세요.");
            });
    </script>
</div>
<div class="yogavalue">
	<div class="button-group">
      <button>일시정지</button>
      <button>그만하기</button>
	</div>
	<img class="yogaimg" src="images/yogapose/10-5-1.png">
	<img class="yogaimg" src="images/yogapose/1-1-1.png">
	<img class="yogaimg" src="images/yogapose/10-2.jpg">
	<img class="yogaimg" src="images/yogapose/10-3.jpg">
	<img class="yogaimg" src="images/yogapose/10-4.jpg">
	<img class="yogaimg" src="images/yogapose/10-6.jpg">
	<img class="yogaimg" src="images/yogapose/10-7.jpg">
	<img class="yogaimg" src="images/yogapose/10-8.jpg">
</div>

 
<script src="js/index10.js"></script> 
</body>
</html> 