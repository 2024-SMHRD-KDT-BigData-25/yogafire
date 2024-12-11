<!DOCTYPE html>
<%@page import="com.smhrd.yoga.model.userInfo"%>
<%@ page pageEncoding="UTF-8" %>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>YogaFire</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
     
        body {
            margin: 0;
    font-family: 'Arial', sans-serif;
    background-color: #FFFFFF;
    color: #000000; 
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
            padding: 20px 40px;
            background-color: #FFFFFF;
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

        .header-banner button {
            color: #2E8B57;
            border: 2px solid #2E8B57;
            background: transparent;
            font-size: 1rem;
            font-weight: bold;
            padding: 8px 15px;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .header-banner button:hover {
            background-color: #2E8B57;
            color: #FFFFFF;
        }

  
        .main-banner {
            height: 90vh;
            background: url('images/배경.jpg') no-repeat center center/cover;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            animation: fadeInUp 1.5s ease;
        }

        .main-banner h1 {
            font-size: 4rem;
            font-weight: 900;
            color: #FFFFFF;
            margin-bottom: 20px;
        }

        .main-banner p {
            font-size: 1.8rem;
            font-weight: bold;
            color: #FFFFFF;
            margin: 20px 0;
        }

        .main-banner .cta-button {
            padding: 12px 30px;
            font-size: 1.4rem;
            font-weight: bold;
            color: #FFFFFF;
            background-color: #2E8B57;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .main-banner .cta-button:hover {
            background-color: #228B47;
            transform: translateY(-3px);
        }

     
        .custom-scope {
            padding: 60px 20px;
            background: #FFFFFF;
            color: #000000;
        }

        .custom-scope article {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 40px;
            max-width: 1200px;
            margin: 0 auto;
            align-items: center;
        }

        .custom-scope figure img {
            width: 100%;
            max-width: 600px;
            height: auto;
            border-radius: 15px;
            box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.2);
        }

        .custom-scope h1, .custom-scope h2 {
            font-size: 2.5rem;
            font-weight: bold;
            color: #000000;
            margin-bottom: 20px;
        }

        .custom-scope p {
            font-size: 1.2rem;
            line-height: 1.8;
            color: #000000;
        }

     
        .ad-banner {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background: #FFFFFF;
            padding: 15px 20px;
            border-radius: 15px;
            text-align: center;
            color: #2E8B57;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
            animation: fadeInUp 2.5s ease;
        }

        .ad-banner img {
            width: 150px;
            height: auto;
            margin-bottom: 10px;
            border-radius: 8px;
        }

        .ad-banner button {
            background-color: #2E8B57;
            color: #FFFFFF;
            padding: 8px 15px;
            border: none;
            border-radius: 8px;
            font-size: 1rem;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .ad-banner button:hover {
            background-color: #228B47;
        }

        footer {
            background-color: #000000;
            color: #FFFFFF;
            text-align: center;
            padding: 20px 0;
            animation: fadeInUp 3s ease;
        }
        
.user-info {
    display: flex;
    align-items: center;
    gap: 10px; 
}


.profile-img {
    width: 40px;
    height: 40px;
    border-radius: 50%; 
    border: 2px solid #2E8B57; 
    object-fit: cover; 
}


.btn-profile, .btn-logout {
    padding: 5px 10px;
    font-size: 0.9rem;
    color: #2E8B57;
    background-color: #FFFFFF;
    border: 2px solid #2E8B57;
    border-radius: 5px;
    cursor: pointer;
    transition: all 0.3s ease;
}

.btn-profile:hover, .btn-logout:hover {
    background-color: #2E8B57;
    color: #FFFFFF;
}

.pricing-section h2, 
.pricing-section h4, 
.pricing-section p { 
    color: #000000 !important; 
}

 .pricing-container {
      display: flex;
      justify-content: center;
      gap: 20px;
      padding: 40px;
    }

    .pricing-card {
      background: linear-gradient(135deg, #F5F5FF, #E3E3FF);
      border-radius: 20px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
      text-align: center;
      padding: 30px;
      max-width: 300px;
      flex: 1;
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .pricing-card:hover {
      transform: translateY(-10px);
      box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
    }

    .pricing-card h4 {
      font-size: 1.5rem;
      margin-bottom: 15px;
       color: #000000;
    }

    .pricing-card .price {
      font-size: 2rem;
      font-weight: bold;
      margin: 20px 0;
      color: #333;
    }

    .pricing-card ul {
      list-style: none;
      padding: 0;
      margin: 20px 0;
      text-align: left;
    }

    .pricing-card ul li {
      font-size: 1rem;
      margin-bottom: 10px;
      color: #000000;
      display: flex;
      align-items: center;
    }

    .pricing-card ul li::before {
      content: '✔️';
      margin-right: 10px;
      color: #6B6BFF;
    }

    .pricing-card button {
      background: #6B6BFF;
      color: #FFF;
      font-size: 1rem;
      padding: 10px 20px;
      border: none;
      border-radius: 10px;
      cursor: pointer;
      transition: background 0.3s ease;
    }

    .pricing-card button:hover {
      background: #4F4FDC;
    }

    .membership-section h3 {
      color: var(--text-color);
      font-size: 1.8rem;
      margin-bottom: 20px;
    }

    .membership-card {
      padding: 15px;
      border-radius: 10px;
      background: var(--accent-color);
      box-shadow: 0 5px 10px var(--card-shadow);
      margin-bottom: 20px;
      text-align: center;
    }

    .membership-card h4 {
      margin-bottom: 10px;
      font-size: 1.5rem;
    }

    .membership-card p {
      margin: 5px 0;
    }

    .membership-card button {
      padding: 10px 20px;
      background: var(--main-color);
      color: white;
      font-weight: bold;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      transition: 0.3s;
    }

    .membership-card button:hover {
      background: var(--button-hover);
    }
   
        
    </style>
</head>
<body>

<% userInfo member = (userInfo) session.getAttribute("member"); %>
<!-- 헤더 섹션 -->
<div class="header-banner">
    <div class="logo">
        <img src="images/1.png" alt="YogaFire 로고" class="logo-img" style="height: 70px;">
    </div>

    <% if (member == null) { %>
        <div>
            <button class="btn-login" onclick="location.href='/boot/login'">로그인</button>
            <button class="btn-signup" onclick="location.href='/boot/join'">회원가입</button>
        </div>
    <% } else { %>
        <div class="user-info">
            <!-- 프로필 이미지 -->
            <img src="images/${member.profic}" alt="프로필 사진" class="profile-img">
            <!-- 마이페이지 및 로그아웃 버튼 -->
            <button class="btn-profile" onclick="location.href='/boot/myPage'">마이페이지</button>
            <button class="btn-logout" onclick="location.href='logout'">로그아웃</button>
        </div>
    <% } %>
</div>


<!-- 메인 배너 섹션 -->
<div class="main-banner">
    <h1>Discover Your Inner Peace</h1>
    <p>AI와 함께하는 개인화된 요가 & 명상 프로그램</p>
    <% if (member == null) { %>
    <button class="cta-button" onclick="location.href='/boot/join'">지금 시작하기</button>
    <% } else { %>
    <button class="cta-button" onclick="location.href='/boot/programs'">지금 시작하기</button>
    <% } %>
</div>

<!-- 콘텐츠 섹션 -->
<div class="custom-scope">
    <article>
        <figure class="scroll-animated"><img src="images/me2.jpg" alt="AI Mediapipe"></figure>
        <section class="scroll-animated">
            <h1>AI Mediapipe</h1>
            <p>AI와 Mediapipe를 활용한 요가 코칭은 카메라를 통해 사용자의 동작을 추적하고, 관절 위치와 자세 데이터를 분석하여 정확한 피드백을 제공합니다. AI 모델이 올바른 자세와 개선점을 제안해 운동 효과를 극대화하며, 개인 맞춤형 코칭이 가능합니다. 이를 통해 사용자들은 전문 트레이너 없이도 효율적으로 요가를 배우고 수행할 수 있습니다.</p>
        </section>

        <figure class="scroll-animated"><img src="images/요가배경이미지8.jpg" alt="요가 배경"></figure>
        <section class="scroll-animated">
            <h2>Yoga</h2>
            <p>요가는 신체의 균형과 유연성을 향상시키고, 근력을 강화하며, 심신의 안정을 돕는 수련법입니다. 명상은 마음을 집중하고 내면을 관찰함으로써 스트레스를 줄이고 정신적 평온을 얻는 데 중점을 둡니다. 이 둘은 조화를 이루어 몸과 마음의 건강을 동시에 증진시킵니다.</p>
        </section>
    </article>
</div>

<!-- 요금제 섹션 -->
<body>
  <div class="pricing-container">
    
    
<div class="pricing-card">
      <h4>월별 요가 회원권</h4>
    
      <div class="price">₩14,900 / 월</div>
      <ul>
      <li>3개월 또는 6개월</li>
        <li>1일 1회 이용 가능</li>   
         
</ul>     
<button onclick="handlePurchase()">구매하기</button>

    </div>

<div class="pricing-card" style="background: linear-gradient(135deg, #E3F5E3, #D6FFD6);">  
  
      <h4>프리미엄 요가 회원권</h4>
    
      <div class="price">₩14,900 / 월</div>
      <ul>
      <li>3개월 또는 6개월</li>
       <li>전타임 제한 없이 사용가능</li>      
         
</ul>     
<button onclick="handlePurchase()">구매하기</button>

    </div>

    <div class="pricing-card" style="background: linear-gradient(135deg, #FFF5F5, #FFE3E3);">
      <h4>횟수제 요가 회원권</h4>
      <div class="price">₩59,000 / 월</div>
      <ul>        
   <li>10회,35회</li> 
   <li>참여시 횟수 차감 방식</li>
      </ul>  
<button onclick="handlePurchase()">구매하기</button>

    </div>
  </div>

   <div class="pricing-container">
    
    
<div class="pricing-card">
      <h4>월별 명상 회원권</h4>
    
      <div class="price">₩14,900 / 월</div>
      <ul>
      <li>3개월 또는 6개월</li>
        <li>1일 1회 이용 가능</li>   
         
</ul>     
<button onclick="handlePurchase()">구매하기</button>

    </div>

<div class="pricing-card" style="background: linear-gradient(135deg, #E3F5E3, #D6FFD6);">  
  
      <h4>프리미엄 명상 회원권</h4>
    
      <div class="price">₩14,900 / 월</div>
      <ul>
      <li>3개월 또는 6개월</li>
        <li>전타임 제한 없이 사용가능</li>   
         
</ul>     
<button onclick="handlePurchase()">구매하기</button>

    </div>

    <div class="pricing-card" style="background: linear-gradient(135deg, #FFF5F5, #FFE3E3);">
      <h4>횟수제 명상 회원권</h4>
      <div class="price">₩59,000 / 월</div>
      <ul>        
   <li>10회,35회</li> 
   <li>참여시 횟수 차감 방식</li>
      </ul>  
<button onclick="handlePurchase()">구매하기</button>

    </div>
  </div>

<!-- 체험하기 섹션 (로그인하지 않은 경우에만 표시) -->
<% if (member == null) { %>
<div class="ad-banner">
    <img src="images/ai분석자세.gif" alt="체험하기">
    <p>AI 기반 요가 자세 분석</p>
    <button onclick="location.href='/boot/index10'">지금 체험하기</button>
</div>
<% } %>


<section class="contact-info-section" style="background-color: #f8f9fa; padding: 40px 20px;">
    <div class="container2">
        <div class="row">
            <!-- 바로 상담하기 -->
            <div class="col-md-6">
                <h3 style="color:   #000000; font-weight: bold;">상담 안내</h3>
                <p style="color:    #000000;">상담은 영업시간 중에 전화 또는 채팅으로 가능하며, 대면 상담은 방문 또는 온라인으로 가능합니다.</p>
                <table style="width: 100%; border-top: 1px solid #c9c9b8; margin-top: 20px;">
                    <tr>
                        <th style="text-align: left; padding: 10px 0;">영업 시간</th>
                        <td style="text-align: left; padding: 10px 0;">전화 상담 월~금 8:00 ~ 22:00 / 채팅 상담 월~금 10:00 ~ 19:00</td>
                    </tr>
                    <tr>
                        <th style="text-align: left; padding: 10px 0;">채팅 상담</th>
                        <td style="text-align: left; padding: 10px 0;">
                             <a href="http://pf.kakao.com/_xbHxkMn" style="color:    #000000; text-decoration: none; font-weight: bold;">카카오톡 상담 바로가기</a>
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
               <h3 style="color:   #000000; font-weight: bold;">상담 예약</h3>
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
                
            </div>
        </div>
    </div>
</section>

<script>
    const observer = new IntersectionObserver(entries => {
        entries.forEach(entry => {
            if (entry.isIntersecting) entry.target.classList.add('show');
        });
    }, { threshold: 0.1 });

    document.querySelectorAll('.scroll-animated').forEach(el => observer.observe(el));
</script>

<script>
  // 구매하기 버튼 클릭 시 동작하는 함수
  function handlePurchase() {
    alert("구매 완료!");
  }
</script>


</body>
</html> 