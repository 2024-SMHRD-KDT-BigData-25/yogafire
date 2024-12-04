<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상담 예약</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 30px;
        }

        .header h1 {
            font-size: 1.8rem;
            font-weight: bold;
            color: #333;
        }

        .profile {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            background-color: #ccc;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 0.9rem;
            color: white;
        }

        .image-placeholder {
            width: 100%;
            height: 200px;
            background-color: #dcdcdc;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #555;
            margin-bottom: 30px;
            font-size: 1.2rem;
        }

        .section-title {
            font-size: 1.5rem;
            font-weight: bold;
            color: #333;
            margin-bottom: 20px;
        }

        .calendar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .calendar .month {
            font-size: 1.2rem;
            font-weight: bold;
            color: #555;
        }

        .calendar-grid {
            display: grid;
            grid-template-columns: repeat(7, 1fr);
            gap: 10px;
            margin-bottom: 30px;
        }

        .calendar-grid div {
            padding: 10px;
            text-align: center;
            background-color: #f0f0f0;
            border-radius: 5px;
            font-size: 0.9rem;
            color: #555;
        }

        .calendar-grid .active {
            background-color: #4caf50;
            color: white;
        }

        .time-options {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
        }

        .time-options button {
            flex: 1 1 calc(33.333% - 10px);
            padding: 10px 15px;
            font-size: 0.9rem;
            background-color: #f0f0f0;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            color: #333;
            text-align: center;
        }

        .time-options button:hover {
            background-color: #4caf50;
            color: white;
        }

        .time-options button.selected {
            background-color: #4caf50;
            color: white;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Header -->
        <div class="header">
            <h1>YogaFire, 상담 예약</h1>
            <div class="profile">프로필</div>
        </div>

        <!-- Placeholder Image -->
        <div class="image-placeholder">홍보용 이미지</div>

        <!-- 예약하기 -->
        <div>
            <h2 class="section-title">예약하기</h2>
            <div class="calendar">
                <button>&lt;</button>
                <div class="month">2024.12</div>
                <button>&gt;</button>
            </div>
            <div class="calendar-grid">
                <div>일</div>
                <div>월</div>
                <div>화</div>
                <div>수</div>
                <div>목</div>
                <div>금</div>
                <div>토</div>
                <div>1</div>
                <div class="active">2</div>
                <div>3</div>
                <div>4</div>
                <div>5</div>
                <div>6</div>
                <div>7</div>
                <div>8</div>
                <div>9</div>
                <div>10</div>
                <div>11</div>
                <div>12</div>
                <div>13</div>
                <div>14</div>
                <!-- Add more days as needed -->
            </div>
        </div>

        <!-- 시간 선택 -->
        <div>
            <h2 class="section-title">시간을 선택하세요</h2>
            <div class="time-options">
                <button>오전 9:00</button>
                <button>오전 9:30</button>
                <button>오전 10:30</button>
                <button>오후 13:30</button>
                <button>오후 15:30</button>
                <button>오후 16:30</button>
            </div>
        </div>
    </div>
</body>
</html>
