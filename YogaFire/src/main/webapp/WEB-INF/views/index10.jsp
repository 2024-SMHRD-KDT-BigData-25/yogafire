<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>시퀀스 실행 페이지</title>
<link rel="stylesheet" href="css/index10.css">
</head>
<body>

<div class="container">
  <iframe class="yogavideo" src="https://www.youtube.com/embed/D3yExRi7EME?si=SgjBFurBWFXqnDMn" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
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
	<img class="yogaimg" src="../img/아동자세.png">
	<img class="arrow" src="../img/화살표.png">
	<img class="yogaimg" src="../img/메뚜기 자세.png">
	<img class="arrow" src="../img/화살표.png">
	<img class="yogaimg" src="../img/아래를 향한 개 자세.png">
	<img class="arrow" src="../img/화살표.png">
	<img class="yogaimg" src="../img/전사 자세1.png">
	<img class="arrow" src="../img/화살표.png">
	<img class="yogaimg" src="../img/역전사 자세.png">
	<img class="arrow" src="../img/화살표.png">
	<img class="yogaimg" src="../img/확장된 삼각형 자세.png">
	<img class="arrow" src="../img/화살표.png">
	<img class="yogaimg" src="../img/강렬한 다리 스트레칭 자세.png">
	<img class="arrow" src="../img/화살표.png">
	<img class="yogaimg" src="../img/가랜드 포즈.png">
	<div class="button-group">
    <button>일시정지</button>
    <button>그만하기</button>

	</div>
</div>

  
  
</body>
</html> 