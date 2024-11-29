<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" %>
<html lang="ko">
<head>
   <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인 페이지</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>

    .top-menu {
      background-color: #f9f9eb;
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 15px 30px;
      border-bottom: 1px solid #c9c9b8;
    }

.menu-items {
    display: flex;
    gap: 20px; 
    margin-right: auto; 
}
.button-group {
    display: flex;
    gap: 10px;
    margin-left: auto !important; 
}
.button-group a,
.button-group button {
    background-color: #4d7155;
    color: white;
    border: none;
    font-size: 1rem;
    font-weight: bold;
    border-radius: 20px;
    padding: 10px 20px;
    margin-right: 10px;
    text-decoration: none; /* 링크 밑줄 제거 */
    cursor: pointer;
}
.button-group a:hover {
    background-color: #3b5942;
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

        /* 메인 섹션 스타일 */
        #intro {
            background-color: #f9f9eb;
            padding: 100px 0;
            text-align: center;
            min-height: 400px;
        }

        #intro h2 {
            font-size: 1.5rem;
            color: #4d7155;
            line-height: 1.8;
            font-weight: 600;
        }

        /* 이미지 섹션  */
        .image-section {
            position: relative;
            text-align: center;
            color: white;
        }

        .image-section img {
            width: 100%;
            height: auto;
            object-fit: cover;
        }

        .image-section .overlay-text {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
            font-size: 1.5rem;
            line-height: 1.5;
            font-weight: bold;
            color: white;
            text-shadow: 0px 0px 5px rgba(0, 0, 0, 0.8);
        }

        /* 하단 섹션  */
        .features-section {
            background-color: #f9f9eb;
            padding: 60px 0;
            text-align: center;
        }

        .features-section h2 {
            font-size: 1.8rem;
            font-weight: bold;
            margin-bottom: 30px;
            color: #4d7155;
        }

        .feature-item {
            margin-bottom: 40px;
        }

        .feature-item img {
            width: 100%;
            max-width: 280px;
            height: auto;
            margin: 0 auto 20px;
            display: block;
            border-radius: 10px;
            object-fit: cover;
        }

        .feature-item h3 {
            font-size: 1.3rem;
            font-weight: bold;
            color: #4d7155;
        }

        .feature-item p {
            font-size: 1rem;
            color: #4d7155;
            line-height: 1.6;
            margin: 10px 0;
        }

        /* 푸터  */
        footer {
            background-color: #4d7155;
            color: white;
            text-align: center;
            padding: 15px 0;
        }

        h3 {
            color: gray;
        }
        p {
            color: black;
        }
           /* 카카오톡 아이콘 고정 스타일 */

        .kakao-login-icon {
            position: fixed; 
            bottom: 20px; 
            right: 20px; 
            z-index: 9999; 
            width: 60px; 
            height: 60px;
            cursor: pointer;
            border-radius: 50%; 
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1); 
        }

        .kakao-login-icon:hover {
            transform: scale(1.1); /* 호버 시 확대 효과 */
            transition: transform 0.2s ease-in-out;
        }
    </style>
</head>
<body>
    <!-- 상단 메뉴 -->
  <div class="top-menu">
    <div class="menu-items">
      <a href="/boot/index2">요가</a>
      <a href="/boot/index3">명상</a>

    </div>
 <div class="button-group">
    <a href="/boot/index5" class="btn">회원권</a>
    <button>체험권</button>
</div>


  </div>

    <!-- 메인 섹션 -->
    <section id="intro">
        <div class="container">
            <h2>
                요가파이어는 2024년에 설립된 요가 명상 빅데이터기반으로 만든 자세교정사이트로<br>
                건강한 라이프스타일을 제안하는 문화공간입니다.
            </h2>
        </div>
    </section>

    <!-- 이미지  -->
    <section class="image-section">
        <img src="images/3.png" alt="Meditation Image">
        <div class="overlay-text">
            "몸은 움직였을 때 이롭고,<br>
            마음은 고요했을 때 이롭습니다."<br>
            <span style="font-size: 1rem; font-weight: normal;">- 사경 미팜</span>
        </div>
    </section>

    <!-- 하단 섹션 -->
    <section class="features-section">
        <div class="container">
            <div class="row">
                <div class="col-md-4 feature-item">
                    <h3>현대인을 위한 요가</h3> 
                    <h3>단순 운동이 아닌 '움직이는 명상'</h3>
                    <br>
                    <p>근력, 유연성, 균형을 향상시키고 몸과 마음을 회복합니다. 마음이 안정되고 여유로워지는 효과도 기대할 수 있습니다.</p>
                         <img src="images/4.png" alt="요가 이미지">
                </div>
                <div class="col-md-4 feature-item">
                    <h3>밀도 있는 명상</h3>
                    <h3>체계적인 마음 훈련</h3>
                    <br>
                    <p>명상은 마음운동입니다. 뇌과학과 연구결과에 입증된 효과를 제공하며 스트레스 관리와 감정 조절을 체계적으로 훈련합니다.</p>
                          <img src="images/5.png" alt="명상 이미지">
                </div>
                <div class="col-md-4 feature-item">
                    <h3>전문성과 개인적 성장을지향하는 요가 명상 지도자과정</h3>
                    <br>
                    <p>요가파이어는 풍부한 요가 경험과 전문 지식을 갖춘 빅데이터들을 학습하여 요가의 효과를 충분히 누릴 수 있도록 돕고 있습니다.</p>
                                        <img src="images/6.png" alt="지도자 과정">
                </div>
            </div>
        </div>
    </section>
    
      <section class="image-section">
        <img src="images/7.png" alt="Meditation Image">
	        <div class="overlay-text">
	            "요가 파이어를 이용해보세요,<br>
	            당신의 몸과 마음가짐이 달라집니다."<br>
	            <span style="font-size: 1rem; font-weight: normal;">- 천상지희</span>
        </div>
    </section>
   
<section class="features-section">
    <div class="container">
        <div class="row">
            <!-- 첫 번째 세션 -->
            <div class="col-md-6 feature-item">
                <h3>기업과 미술관을 포함한 외부활동</h3>
                <br>
                <p>다양한 기업, 문화센터, 그리고 미술관 등을 대상으로 조직원들의 몸과 마음의 웰빙을 위해 요가와 명상 프로그램을 제공하고 있습니다.</p>
                <img src="images/8.png" alt="외부활동 이미지" class="img-fluid" style="border-radius: 10px;">
            </div>
            <!-- 두 번째 세션 -->
            <div class="col-md-6 feature-item">
                <h3>수련을 통한 건강한 커뮤니티</h3>
                <br>
                <p>요가파이어는 나이, 성별, 수련 수준에 관계없이 모든 분을 진심으로 환영합니다. 함께하는 공간에서 마음 편안히 수련하고 좋은분들과  성장할 수 있기를 바랍니다 </p>
                <img src="images/9.png" alt="커뮤니티 이미지" class="img-fluid" style="border-radius: 10px;">
            </div>
        </div>
    </div>
</section>


<section class="contact-info-section" style="background-color: #e9f5e1; padding: 40px 20px;">
    <div class="container">
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
    
     <a href="https://kauth.kakao.com/oauth/authorize?client_id=YOUR_REST_API_KEY&redirect_uri=http://localhost:8080/oauth&response_type=code">
    <img src="https://developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png" 
         alt="카카오톡 로그인" 
         class="kakao-login-icon">
</a>

</section>

</body>
</html>
