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
            color: #2E8B57; 
            overflow-x: hidden;
        }


        @keyframes fadeInUp {
            0% {
                opacity: 0;
                transform: translateY(30px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
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

        .header-banner .logo img {
            height: 70px; 
            width: auto;   
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
            background: url('images/배경.png') no-repeat center center/cover;
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

        footer {
            background-color: #000000; 
            color: #FFFFFF;  
            text-align: center;
            padding: 20px 0;
            animation: fadeInUp 3s ease;
        }
    </style>
</head>
<body>

<% userInfo member = (userInfo) session.getAttribute("member"); %>

<!-- 헤더 섹션 -->
<div class="header-banner">
    <div class="logo">
        <img src="images/1.png" alt="YogaFire 로고" class="logo-img">
    </div>
    <% if (member == null) { %>
        <div>
            <button onclick="location.href='/boot/index7'">로그인</button>
            <button onclick="location.href='/boot/index8'">회원가입</button>
        </div>
    <% } else { %>
        <div>
            <button onclick="location.href='/boot/index4'">마이페이지</button>
        </div>
    <% } %>
</div>


<div class="main-banner">
    <h1>Discover Your Inner Peace</h1>
    <p>AI와 함께하는 요가 & 명상 코칭 서비스 프로그램</p>
    <button class="cta-button" onclick="location.href='/boot/index8'">지금 시작하기</button>
</div>


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

<footer>
    © 2024 YogaFire. All Rights Reserved.
</footer>


<!-- 스크롤 내릴때 텍스트 나타나게 동적이미지 -->
<script>
    const observer = new IntersectionObserver(entries => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('show');
            }
        });
    }, {
        threshold: 0.1
    });

    document.querySelectorAll('.scroll-animated').forEach(el => observer.observe(el));
</script>

</body>
</html>
