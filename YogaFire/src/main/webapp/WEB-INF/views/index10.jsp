<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>시퀀스 실행 페이지</title>
  <style>

@each $button, $color in $colors {
  .#{$button} {
    --color: #{$color};
    --hover: #{adjust-hue($color, 45deg)};
  }
}
$colors: (
  offset: #19bc8b
);
.button {  
  box-shadow: 
    0.3em 0.3em 0 0 var(--color),
    inset 0.3em 0.3em 0 0 var(--color);
  
  &:hover,
  &:focus {
    box-shadow: 
      0 0 0 0 var(--hover),
      inset 6em 3.5em 0 0 var(--hover);
  }
}
 body {
  margin: 0;
  font-family: 'Arial', sans-serif;
  color: #333; 
  line-height: 1.6;
  background-color: #f9f9eb;
}
 .container {
  display: flex;
  align-items: flex-start;
  background-color: #f9f9eb; 
  height: 530px;
}

.yogavideo {
display: flex;
width: 65%;
height: 100%;
}
.yogavalue {
background-color: #f9f9eb;
    height: 199px;
    display: flex;
    flex-direction: row;
    padding-left: 20px;
    gap: 10px;
    align-items: center;
}
#video {
            width: 35%;
            height: 100%;
            background-color: black;
             transform: scaleX(-1); /* 수평 반전 */
            -webkit-transform: scaleX(-1); /* Webkit 브라우저 호환 */
           
        }
.value {
	height: 120px;
	width: 190px;
}
.arrow {
	height: 10%;
	width: 2%;
}
.yogaimg{
	height: 65%;
	width: 8%;
}
.button-group {
background-color: #f9f9eb;
    height: 65%;
    width: 10%;
    display: flex;
    flex-direction: column;
    justify-content: space-evenly;
    align-items: center;
    border-radius: 20%;
    margin: 2%;
    border: solid;
    border-color: #4d7155;
}


.button-group button {
  background-color: #4d7155;
  color: white;
  border: none;
  font-size: 1rem;
  font-weight: bold;
  border-radius: 20px;
  padding: 10px 20px;
  cursor: pointer;
  width: 80%;
  height: 35%;
}

 .button-group button:hover {
  background-color: #3b5942;
}



  </style>
</head>
<body>

    <h1>Test Page</h1>
    <p>This is a test page for index10.jsp.</p>

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