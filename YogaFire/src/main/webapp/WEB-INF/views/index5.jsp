<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>요가 및 명상 회원권</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        :root {
            --main-color: #7DCEA0; /* 메인 색상 */
            --accent-color: #F4F6F7; /* 배경 색상 */
            --hover-color: #A3D2A6; /* 호버 색상 */
            --text-color: #2C3E50; /* 텍스트 색상 */
            --card-shadow: rgba(0, 0, 0, 0.1);
            --section-bg: #E8F8F5; /* 섹션 배경 색상 */
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: var(--accent-color); /* 전체 배경 */
            color: var(--text-color);
            margin: 0;
            padding: 0;
        }

        .navbar {
            background-color: var(--main-color);
            padding: 15px;
        }

        .navbar-brand, .nav-link {
            color: white !important;
            font-weight: bold;
        }

        .nav-link:hover {
            color: var(--hover-color) !important;
        }

        h2 {
            font-size: 2.8rem;
            text-align: center;
            color: var(--main-color);
            margin: 50px 0 20px;
            font-weight: bold;
        }

        .section-title {
            font-size: 2rem;
            text-align: center;
            margin-bottom: 30px;
            color: var(--text-color);
            position: relative;
        }

        .section-title::after {
            content: '';
            width: 80px;
            height: 3px;
            background: var(--main-color);
            display: block;
            margin: 10px auto 0;
        }

        .card {
            background: white;
            border-radius: 15px;
            padding: 20px;
            box-shadow: 0 8px 15px var(--card-shadow);
            transition: transform 0.4s ease, box-shadow 0.4s ease;
        }

        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
        }

        .card h4 {
            font-size: 1.5rem;
            color: var(--main-color);
            margin-bottom: 15px;
        }

        .btn-primary {
            background: var(--main-color);
            border: none;
            color: white;
            font-weight: bold;
            padding: 12px 20px;
            border-radius: 8px;
            font-size: 1.1rem;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
            transition: all 0.4s ease;
        }

        .btn-primary:hover {
            background: var(--hover-color);
            transform: translateY(-3px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
        }

        .fade-in {
            opacity: 0;
            animation: fadeIn 1.2s forwards;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* 섹션 배경색 */
        #yoga-plans,
        #meditation-plans {
            background-color: var(--section-bg); /* 섹션별 배경 색상 */
            border-radius: 15px;
            padding: 30px;
            margin-bottom: 40px;
        }
    </style>
</head>
<body>
    <!-- 네비게이션 바 -->
    <nav class="navbar">
        <div class="container">
            <a class="navbar-brand" href="http://localhost:8090/boot/">🏠 Home</a>
            <a class="navbar-brand ml-4" href="http://localhost:8090/boot/index4">📊 대시보드</a>
            <div>
                <a class="nav-link" href="#meditation-plans">🧘‍♀️ 요금제</a>
            </div>
        </div>
    </nav>

    <!-- 요가 회원권 섹션 -->
    <div class="container fade-in" id="yoga-plans">
        <h2>🧘 요가 회원권</h2>
        <div class="row">
            <!-- 요가 플랜 -->
            <div class="col-md-4 mb-4">
                <div class="card text-center">
                    <h4>🌟 월별 요가 회원권</h4>
                    <p><strong>3개월, 6개월</strong></p>
                    <p>1일 1회 매일 수강 가능</p>
                    <button class="btn btn-primary w-100">₩14,900</button>
                </div>
            </div>
            <!-- 추가 요가 플랜들 -->
            <div class="col-md-4 mb-4">
                <div class="card text-center">
                    <h4>💎 프리미엄 요가 회원권</h4>
                    <p><strong>3개월, 6개월</strong></p>
                    <p>전 타임 횟수 제한 없이 수강 가능</p>
                    <button class="btn btn-primary w-100">₩24,900</button>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card text-center">
                    <h4>🎯 횟수제 요가 회원권</h4>
                    <p><strong>10회, 35회</strong></p>
                    <p>참여 시 횟수 차감 방식</p>
                    <button class="btn btn-primary w-100">₩59,000</button>
                </div>
            </div>
        </div>
    </div>

    <!-- 명상 회원권 섹션 -->
    <div class="container fade-in" id="meditation-plans">
        <h2>🧘‍♀️ 명상 회원권</h2>
        <div class="row">
            <!-- 명상 플랜 -->
            <div class="col-md-4 mb-4">
                <div class="card text-center">
                    <h4>🌼 기본 명상 회원권</h4>
                    <p><strong>1개월, 3개월</strong></p>
                    <p>매주 3회의 명상 세션 참여 가능</p>
                    <button class="btn btn-primary w-100">₩9,900</button>
                </div>
            </div>
            <!-- 추가 명상 플랜들 -->
            <div class="col-md-4 mb-4">
                <div class="card text-center">
                    <h4>🌟 고급 명상 회원권</h4>
                    <p><strong>3개월, 6개월</strong></p>
                    <p>고급 명상 오디오 제공</p>
                    <button class="btn btn-primary w-100">₩19,900</button>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card text-center">
                    <h4>🎯 집중 명상 플랜</h4>
                    <p><strong>6개월</strong></p>
                    <p>1:1 개인 명상 코칭 포함</p>
                    <button class="btn btn-primary w-100">₩59,900</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
