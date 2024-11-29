<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>요가 페이지</title>
  <style>

body {
  margin: 0;
  font-family: 'Arial', sans-serif;
  background-color: #DBD6C7; 
  color: #333; 
  line-height: 1.6;
}

/* 상단 메뉴 스타일 */
.top-menu {
  background-color: #f9f9eb;
  display: flex;
  justify-content: space-between;	
  align-items: center;	
  padding: 15px 30px;
  border-bottom: 1px solid #c9c9b8;
}

.button-group button {
  background-color: #4d7155;
  color: white;
  border: none;
  font-size: 1rem;
  font-weight: bold;
  border-radius: 20px;
  padding: 10px 20px;
  margin-right: 10px;
  cursor: pointer;
}

.button-group button:hover {
  background-color: #3b5942;
}

.menu-items {
  display: flex;
  gap: 20px;
}

.menu-items a {
  color: #4d7155;
  text-decoration: none;
  font-size: 1.2rem;
  font-weight: bold;
  padding: 8px 15px;
  border-radius: 10px;
}

.menu-items a:hover {
  background-color: #4d7155;
  color: white;
}


.container {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 50px;
  flex-wrap: wrap; /* 반응형 줄바꿈 */
  background-color:#FDE2E4
}

.text-section {
  max-width: 50%;
}

.text-section h1 {
  font-size: 36px;
  color: #4D7155;
  margin-bottom: 20px;
}

.text-section .subtitle {
  font-size: 18px;
  color: #6E6E6E;
  font-weight: bold;
  margin-bottom: 20px;
}


.image-section {
  max-width: 40%;
  text-align: right;
}

.image-section img {
  width: 100%;
  max-width: 400px;
  height: auto;
  border-radius: 10px;
  object-fit: cover;
}


.slider {
  position: relative;
  max-width: 100%;
  overflow: hidden;
  border-radius: 10px;
}

.slider img {
  width: 100%;
  display: none;
  transition: opacity 1s ease-in-out;
}

.slider img.active {
  display: block;
  opacity: 1;
}

.start-section {
  background-color: #F9F9EB;
  padding: 60px 20px;
  text-align: center;
}

.section-title {
  font-size: 2rem;
  font-weight: bold;
  color: #4D7155;
  margin-bottom: 30px;
}


.start-section .row {
  display: flex; 
  justify-content: center; 
  gap: 20px;
  flex-wrap: wrap; 
  margin: 0 auto;
}

.card-item {
  background-color: #F9F9EB;
  border: 2px solid #4D7155;
  padding: 30px 20px;
  border-radius: 10px;
  text-align: center;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  max-width: 300px; 
  transition: transform 0.3s, box-shadow 0.3s; 
}

.card-item:hover {
  transform: translateY(-5px); 
  box-shadow: 0 6px 8px rgba(0, 0, 0, 0.15); 
}

.card-item h3 {
  font-size: 1.5rem;
  color: #4D7155;
  margin-bottom: 10px;
}

.card-item p {
  font-size: 1rem;
  color: #6E6E6E;
  margin-bottom: 20px;
}

.btn-secondary {
  background-color: #4D7155;
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  text-decoration: none;
  font-weight: bold;
  display: inline-block;
}

.btn-secondary:hover {
  background-color: #3B5942;
}


.yoga-program-section {
  background-color: #F9F9EB;
  padding: 40px 20px;
  text-align: center;
}

.yoga-cards-container {
  display: flex;
  justify-content: center;
  gap: 20px;
  flex-wrap: wrap;
}

.yoga-card {
  background-color: white;
  border: 1px solid #E4E4DC;
  border-radius: 10px;
  padding: 20px;
  width: 300px;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  transition: transform 0.3s;
}

.yoga-card:hover {
  transform: translateY(-5px);
}

.yoga-card h3 {
  font-size: 1.5rem;
  color: #4D7155;
}

.yoga-card p {
  font-size: 1rem;
  color: #6E6E6E;
}

.yoga-card .description {
  font-size: 0.9rem;
  color: #999;
}


.kakao-login-icon {
  position: fixed;
  bottom: 20px;
  right: 20px;
  width: 60px;
  height: 60px;
  border-radius: 50%;
  background-color: #FEE500;
  display: flex;
  justify-content: center;
  align-items: center;
  box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
  cursor: pointer;
}

.kakao-login-icon:hover {
  transform: scale(1.1);
  transition: transform 0.2s ease-in-out;
}

  </style>
</head>
<body>
<a href="https://kauth.kakao.com/oauth/authorize?client_id=YOUR_CLIENT_ID&redirect_uri=YOUR_REDIRECT_URI&response_type=code">
  <img src="https://developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png" 
       alt="카카오톡 로그인" 
       class="kakao-login-icon" />
</a>
  <!-- 상단 메뉴 -->
  <div class="top-menu">
    <div class="menu-items">
      <a href="#">요가</a>
      <a href="#">명상</a>
    </div>
    <div class="button-group">
      <button>회원권</button>
      <button>체험권</button>
    </div>
  </div>

  <!-- 메인 컨텐츠 -->
 <div class="container">
    <!-- 텍스트 섹션 -->
    <div class="text-section">
      <h1>More than just stretching</h1>
<p class="subtitle">요가는 단순한 스트레칭 을 넘어서는 심신수련입니다.</p>
</div>
    <!-- 이미지 섹션 -->
    <div class="image-section">
    <div class="slider">
<div class="slider">
  <img src="images/10.png" alt="Meditation 1" class="slide active">
  <img src="images/17.png" alt="Meditation 2" class="slide">
  <img src="images/18.png" alt="Meditation 3" class="slide">
</div>


    </div>
  </div>
</div>
  <section class="start-section">
  <h2 class="section-title">환영합니다 !</h2>
  <div class="container2 text-center">
    <div class="row">
      <!-- 첫 번째 카드 -->
      <div class="card-item">
        <h3>1회 요가체험 신청하기</h3>
        <p>온라인으로 바로 신청 가능!</p>
            <a href="#" class="btn btn-secondary">체험 신청하기</a>
       	
      </div>
      <!-- 두 번째 카드 -->
      <div class="card-item">
        <h3>요가 수업 상담 </h3>
        <p>온라인으로 바로 신청 가능!</p>
        <a href="#" class="btn btn-secondary">상담 예약하기</a>
      </div>
    </div>
  </div>
  
<section class="yoga-program-section">
  <h2 class="yoga-program-title">요가 프로그램</h2>
  <div class="yoga-cards-container">
    <div class="yoga-card">
      <h3>리프레쉬 요가</h3>
      <p>통증해소, 전신순환</p>
      <p class="description">통증해소, 전신순환과 체질에 알맞은 요가</p>
    </div>
    <div class="yoga-card">
      <h3>요가 정렬 빈야사 요가</h3>
      <p>자세교정, 집중력</p>
      <p class="description">몸을 바르게 쓰는 정렬법으로 자세를 교정하고 집중력을 높이는 요가</p>
    </div>
    <div class="yoga-card">
      <h3>릴랙스 요가</h3>
      <p>신경계안정, 스트레스와 피로회복</p>
      <p class="description">요가도구와 아로마를 사용하여 신경계의 균형을 잡아주는 요가</p>
      
      
    
   
</div>
  
  
</div>
  
  


</div>
</section>
  
 <!-- 새로운 하단 섹션 -->
<section class="contact-info-section" style="background-color: #e9f5e1; padding: 40px 20px;">
    <div class="container2">
        <div class="row">
            <!-- 바로 상담하기 -->
            <div class="col-md-6">
                <h3 style="color: #4d7155; font-weight: bold;">상담 안내</h3>
                <p style="color: #4d7155;">상담은 영업시간 중에 전화 또는 채팅으로 가능하며, 대면 상담은 방문 또는 온라인으로 가능합니다.</p>
                <table style="width: 100%; border-top: 1px solid #c9c9b8; margin-top: 20px;">
                    <tr>
                        <th style="text-align: left; padding: 10px 0;">영업 시간</th>
                        <td style="text-align: left; padding: 10px 0;">전화 상담 월~금 8:00 ~ 22:00 / 채팅 상담 월~금 10:00 ~ 19:00</td>
                    </tr>
                    <tr>
                        <th style="text-align: left; padding: 10px 0;">채팅 상담</th>
                        <td style="text-align: left; padding: 10px 0;">
                            <a href="#" style="color: #4d7155; text-decoration: none; font-weight: bold;">카카오톡 상담 바로가기</a>
                        </td>
                    </tr>
                    <tr>
                        <th style="text-align: left; padding: 10px 0;">전화 상담</th>
                        <td style="text-align: left; padding: 10px 0;">02-3447-9642</td>
                    </tr>
                </table>
            </div>

            <!-- 대면 상담 예약 -->
            <div class="col-md-6">
                <h3 style="color: #4d7155; font-weight: bold;">대면 상담 예약</h3>
                <table style="width: 100%; border-top: 1px solid #c9c9b8; margin-top: 20px;">
                    <tr>
                        <th style="text-align: left; padding: 10px 0;">영업 시간</th>
                        <td style="text-align: left; padding: 10px 0;">월~금 8:00 ~ 21:00 / 토요일 10:00 ~ 12:30</td>
                    </tr>
                    <tr>
                        <th style="text-align: left; padding: 10px 0;">방문 상담</th>
                        <td style="text-align: left; padding: 10px 0;">순천시 조례동 순천대점Kt건물 29길 21  5층</td>
                    </tr>
                    <tr>
                        <th style="text-align: left; padding: 10px 0;">온라인 줌 상담</th>
                        <td style="text-align: left; padding: 10px 0;">상담 예약 후 개별 Zoom 링크 문자로 전송</td>
                    </tr>
                </table>
                <button style="margin-top: 20px; background-color: #4d7155; color: white; border: none; padding: 10px 20px; border-radius: 5px; font-weight: bold;">
                    상담 예약하기
                </button>
            </div>
        </div>
    </div>
</section>

<script>
//슬라이드 이미지 목록 가져오기
const slides = document.querySelectorAll(".slider img");
let currentIndex = 0;

// 슬라이드를 순차적으로 보여주는 함수
function showNextSlide() {
  // 현재 슬라이드에서 active 클래스 제거
  slides[currentIndex].classList.remove("active");

  // 다음 슬라이드로 이동 (마지막 이미지 이후 첫 번째로 돌아감)
  currentIndex = (currentIndex + 1) % slides.length;

  // 새로운 슬라이드에 active 클래스 추가
  slides[currentIndex].classList.add("active");
}

// 페이지 로드 시 첫 번째 슬라이드에 active 클래스 추가
slides[currentIndex].classList.add("active");

// 3초마다 슬라이드 변경
setInterval(showNextSlide, 3000);

</script>
  
</body>
</html>