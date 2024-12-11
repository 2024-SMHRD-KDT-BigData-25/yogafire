<!DOCTYPE html>

<%@ page pageEncoding="UTF-8" %>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>YogaFire</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
html::-webkit-scrollbar {
  display: none; /* for Chrome, Safari, and Opera */
}

        body {
            margin: 0;
    font-family: 'Arial', sans-serif;
    background-color: #FFFFFF;
    color: #000000; 
    display: flex;
    flex-direction: column;
    align-items: center;
    scroll-behavior: smooth;
        }

   
        @keyframes fadeInUp {
            0% { opacity: 0; transform: translateY(30px); }
            100% { opacity: 1; transform: translateY(0); }
        }

        .scroll-animated {
            opacity: 0;
            transform: translateY(50px);
            transition: all 0.8s ease-out;
        }

        .show {
            opacity: 1;
            transform: translateY(0);
        }

     
        .header-banner {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #7DCEA0;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            z-index: 1000;
            animation: fadeInUp 1s ease;
        }

        .header-banner .logo {
            font-size: 2rem;
            font-weight: bold;
            color: #2E8B57;
        }


        .header-banner button:hover {
            background-color: #2E8B57;
            color: #FFFFFF;
        }
.logo img {
height: 60px;
    margin: 10px;
    width: 130px;
    margin-left: 20px;
}
.Sequence-performed {
    margin-top: 150px;
    border: solid 8px;
    border-radius: 80px;
    border-color: #7DCEA0;
    padding: 30px;
    max-width: 800px;
    max-height: 2000px;
    overflow-y: auto;
}

.Sequence-performed::-webkit-scrollbar-track
{
  -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
  border-radius: 10px;
  background-color: #F5F5F5;
}

.Sequence-performed::-webkit-scrollbar
{
  width: 30%;
  height: 10px;
  background-color: #F5F5F5;
}

.Sequence-performed::-webkit-scrollbar-thumb
{
  border-radius: 10px;
  -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,.3);
  background-color: #7DCEA0;
}

.Sequence-performed h1 {
    margin-top: 10px;
    margin-left: 40px;
    font-style: italic;
    font-family: fantasy;
    font-size: 35px;
    width: 50%;
}
.Sequence-performed-box {
	display: flex;
    flex-direction: row;
    align-items: center;
    align-content: stretch;
    flex-wrap: wrap;
    justify-content: flex-start;
    padding: 37px;
    border-top: solid 8px;
    border-color: #7DCEA0;
}
.Sequence-performed-img {
	width: 31%;
}
.Sequence-performed-img img {
	border-radius: 25px;
	width: 100%;
}
.Sequence-performed-text {
	width: 60%;
    margin-left: 50px;
    display: flex;
    flex-direction: column;
    height: 230px;
    align-items: flex-start;
    justify-content: space-around;
    font-family: fantasy;
}
.Sequence-performed-text h2 {
	border-bottom: solid;
	ont-size: 25px;
}
h3{
font-size: 20px;
}
.user-info {
    display: flex;
    align-items: center;
    gap: 10px; 
}
.btn-profile, .btn-logout {
    padding: 5px 10px;
    font-size: 0.9rem;
    color: #FFFFFF;
    background-color: #3CB371;
    border-radius: 5px;
    cursor: pointer;
    transition: all 0.3s ease;
    height: 40px;
    border: 0;
}
.btn-logout{
margin-right: 20px; 
}
.btn-profile:hover, .btn-logout:hover {
    background-color: #2E8B57;
    color: #FFFFFF;
    
}
    </style>
</head>
<body>


<!-- 헤더 섹션 -->
<div class="header-banner">
    <div class="logo">
        <img src="../img/1.png" alt="YogaFire 로고" class="logo-img" style="height: 70px;">
    </div>
    <div class="user-info">
            <!-- 마이페이지 및 로그아웃 버튼 -->
            <button class="btn-profile" onclick="location.href='/boot/myPage'">마이페이지</button>
            <button class="btn-logout" onclick="location.href='logout'">로그아웃</button>
        </div>
</div>



<div class="Sequence-performed" id="scroll-container">
	<h1>Sequence performed</h1>
	<div class="Sequence-performed-box">
		<div class="Sequence-performed-img">
			<img src="images/요가배경이미지8.jpg">
		</div>
		<div class="Sequence-performed-text">
			<h2>Name : 시퀀스 이름</h2>
			<h3>Day : 2024/10/21</h3>
			<h3>Score : A</h3>
		</div>
	</div>	
	<div class="Sequence-performed-box">
		<div class="Sequence-performed-img">
			<img src="images/요가배경이미지8.jpg">
		</div>
		<div class="Sequence-performed-text">
			<h2>시퀀스 이름</h2>
			<h3>2024/10/21</h3>
			<h3>점수 : A</h3>
		</div>
	</div>	
	<div class="Sequence-performed-box">
		<div class="Sequence-performed-img">
			<img src="images/요가배경이미지8.jpg">
		</div>
		<div class="Sequence-performed-text">
			<h2>시퀀스 이름</h2>
			<h3>2024/10/21</h3>
			<h3>점수 : A</h3>
		</div>
	</div>	
	<div class="Sequence-performed-box">
		<div class="Sequence-performed-img">
			<img src="images/요가배경이미지8.jpg">
		</div>
		<div class="Sequence-performed-text">
			<h2>시퀀스 이름</h2>
			<h3>2024/10/21</h3>
			<h3>점수 : A</h3>
		</div>
	</div>	
	<div class="Sequence-performed-box">
		<div class="Sequence-performed-img">
			<img src="images/요가배경이미지8.jpg">
		</div>
		<div class="Sequence-performed-text">
			<h2>시퀀스 이름</h2>
			<h3>2024/10/21</h3>
			<h3>점수 : A</h3>
		</div>
	</div>	
	<div class="Sequence-performed-box">
		<div class="Sequence-performed-img">
			<img src="images/요가배경이미지8.jpg">
		</div>
		<div class="Sequence-performed-text">
			<h2>시퀀스 이름</h2>
			<h3>2024/10/21</h3>
			<h3>점수 : A</h3>
		</div>
	</div>	
	<div class="Sequence-performed-box">
		<div class="Sequence-performed-img">
			<img src="images/요가배경이미지8.jpg">
		</div>
		<div class="Sequence-performed-text">
			<h2>시퀀스 이름</h2>
			<h3>2024/10/21</h3>
			<h3>점수 : A</h3>
		</div>
	</div>	
	<div class="Sequence-performed-box">
		<div class="Sequence-performed-img">
			<img src="images/요가배경이미지8.jpg">
		</div>
		<div class="Sequence-performed-text">
			<h2>시퀀스 이름</h2>
			<h3>2024/10/21</h3>
			<h3>점수 : A</h3>
		</div>
	</div>	
	<div class="Sequence-performed-box">
		<div class="Sequence-performed-img">
			<img src="images/요가배경이미지8.jpg">
		</div>
		<div class="Sequence-performed-text">
			<h2>시퀀스 이름</h2>
			<h3>2024/10/21</h3>
			<h3>점수 : A</h3>
		</div>
	</div>	
	<div class="Sequence-performed-box">
		<div class="Sequence-performed-img">
			<img src="images/요가배경이미지8.jpg">
		</div>
		<div class="Sequence-performed-text">
			<h2>시퀀스 이름</h2>
			<h3>2024/10/21</h3>
			<h3>점수 : A</h3>
		</div>
	</div>	
	<div class="Sequence-performed-box">
		<div class="Sequence-performed-img">
			<img src="images/요가배경이미지8.jpg">
		</div>
		<div class="Sequence-performed-text">
			<h2>시퀀스 이름</h2>
			<h3>2024/10/21</h3>
			<h3>점수 : A</h3>
		</div>
	</div>	
	<div class="Sequence-performed-box">
		<div class="Sequence-performed-img">
			<img src="images/요가배경이미지8.jpg">
		</div>
		<div class="Sequence-performed-text">
			<h2>시퀀스 이름</h2>
			<h3>2024/10/21</h3>
			<h3>점수 : A</h3>
		</div>
	</div>	
	<div class="Sequence-performed-box">
		<div class="Sequence-performed-img">
			<img src="images/요가배경이미지8.jpg">
		</div>
		<div class="Sequence-performed-text">
			<h2>시퀀스 이름</h2>
			<h3>2024/10/21</h3>
			<h3>점수 : A</h3>
		</div>
	</div>	
	<div class="Sequence-performed-box">
		<div class="Sequence-performed-img">
			<img src="images/요가배경이미지8.jpg">
		</div>
		<div class="Sequence-performed-text">
			<h2>시퀀스 이름</h2>
			<h3>2024/10/21</h3>
			<h3>점수 : A</h3>
		</div>
	</div>	
	<div class="Sequence-performed-box">
		<div class="Sequence-performed-img">
			<img src="images/요가배경이미지8.jpg">
		</div>
		<div class="Sequence-performed-text">
			<h2>시퀀스 이름</h2>
			<h3>2024/10/21</h3>
			<h3>점수 : A</h3>
		</div>
	</div>	
	<div class="Sequence-performed-box">
		<div class="Sequence-performed-img">
			<img src="images/요가배경이미지8.jpg">
		</div>
		<div class="Sequence-performed-text">
			<h2>시퀀스 이름</h2>
			<h3>2024/10/21</h3>
			<h3>점수 : A</h3>
		</div>
	</div>	
</div>


<script>
    // DOM 요소 가져오기
    const scrollContainer = document.querySelector('.Sequence-performed');

    document.addEventListener('wheel', (event) => {
        const delta = event.deltaY;

        // 컨테이너의 스크롤 상태 확인
        const isAtTop = scrollContainer.scrollTop === 0;
        const isAtBottom = Math.ceil(scrollContainer.scrollTop + scrollContainer.clientHeight) >= scrollContainer.scrollHeight;

        // 컨테이너 안에서만 스크롤 처리
        if (!isAtTop && !isAtBottom) {
            event.preventDefault(); // 페이지 스크롤 방지
            scrollContainer.scrollTop += delta; // 컨테이너 스크롤
        } else if (isAtTop && delta < 0) {
            // 위로 스크롤 시 페이지 스크롤 허용
            return;
        } else if (isAtBottom && delta > 0) {
            // 아래로 스크롤 시 페이지 스크롤 허용
            return;
        } else {
            // 컨테이너 스크롤만 진행
            event.preventDefault();
            scrollContainer.scrollTop += delta;
        }
    }, { passive: false });
</script>





</body>
</html> 