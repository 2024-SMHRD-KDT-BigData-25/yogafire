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
	<h1>체중 감량을 위한 요가 시퀀스</h1>
	<h2>나바사나</h2>
</header>
<div class="container">
  <iframe class="yogavideo" src="https://youtube.com/embed/mJKHGA3tMdU?autoplay=1" allow="autoplay" ></iframe>
  <video id="video" autoplay></video>
    <script>
        // JavaScript로 카메라 화면 접근
        const mainVideo = document.getElementById('video'); //메인 화면
        const popupVideo = document.getElementById('popup-video'); //팝업 화면

        console.log("mainVideo element:", mainVideo);
        console.log("popupVideo element:", popupVideo);
        
        // getUserMedia를 사용하여 카메라 스트림 가져오기
        navigator.mediaDevices.getUserMedia({ video: true })
            .then(stream => {
                console.log("Camera stream obtained:", stream);
                
                //각 video 요소에 스트림 설정
                if (mainVideo) {
                	mainVideo.srcObject = stream;
                	mainVideo.play();
                } else {
                	console.error("mainVideo element not found.");
                }
                
                if (popupVideo) {
                	popupVideo.srcObject = stream;
                	popupVideo.play();
                } else {
                	consol.error("popupVideo element not found.");
                }
            })
            .catch(error => {
                console.error("카메라에 접근할 수 없습니다:", error);
                alert("카메라에 접근할 수 없습니다. 권한을 확인하세요.");
            });
    </script>
</div>
<div class="yogavalue">
	<div class="button-group">
      <button onclick="pauseVideo()">일시정지</button>
      <button onclick="stopAndRedirect()">그만하기</button>
      
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
<div class="overlay" id="overlay">
    <div class="popup">
        <h1>그림과 같이<br>카메라의 각도를 조절해주세요.</h1>
        <div class="popup-box">
        	<div class="popup-img">
        		<img src="images/예시.png">
        	</div>       	
        	<div class="popup-camara">
        		<video id="popup-video" autoplay></video>
        	</div>
        </div>
        <button onclick="startCountdown()">Start</button>
        <p class="countdown" id="countdown"></p>
    </div>
</div>

<script>
    function startCountdown() {
        const overlay = document.getElementById('overlay');
        const countdownElement = document.getElementById('countdown');
        let timeLeft = 5;

        countdownElement.textContent = `Start in ${timeLeft} seconds...`;

        const timer = setInterval(() => {
            timeLeft -= 1;
            if (timeLeft > 0) {
                countdownElement.textContent = `Start in ${timeLeft} seconds...`;
            } else {
                clearInterval(timer);
                overlay.classList.add('hidden');
            }
        }, 1000);
    }
</script>
<script>
 

    function stopAndRedirect() {
        if (confirm("정말 그만하시겠습니까?")) {
            window.location.href = "http://localhost:8090/boot/programs"; // 이동할 URL
        }
    }
</script>

<script src="js/index10.js"></script> 
</body>
</html>
