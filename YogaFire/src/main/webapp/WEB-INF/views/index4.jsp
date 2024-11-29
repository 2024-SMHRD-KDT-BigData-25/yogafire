<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Yoga Dashboard</title>

  <!-- FullCalendar 및 Chart.js CSS -->
  <link href="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.css" rel="stylesheet">
  <style>
    :root {
      --main-color: #C9E4C5; 
      --accent-color: #FDF6E3; 
      --background-color: #F9FAF9; 
      --button-hover: #B3D9B5; 
      --text-color: #556B54; 
      --card-shadow: rgba(0, 0, 0, 0.1);
    }

    body {
      font-family: 'Arial', sans-serif;
      margin: 0;
      padding: 0;
      background: var(--background-color);
    }

    /* 상단 메뉴 */
    .top-menu {
      background-color: var(--main-color);
      padding: 15px 20px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      position: sticky;
      top: 0;
      z-index: 1000;
      box-shadow: 0 4px 6px var(--card-shadow);
    }

    .top-menu h1 {
      font-size: 2rem;
      font-weight: bold;
      color: var(--text-color);
      margin: 0;
    }

    .menu-links {
      display: flex;
      gap: 15px;
    }

    .menu-links a {
      text-decoration: none;
      color: var(--text-color);
      background: var(--accent-color);
      padding: 10px 15px;
      border-radius: 5px;
      font-weight: bold;
      font-size: 1rem;
      transition: background-color 0.3s ease, color 0.3s ease, transform 0.2s ease;
    }

    .menu-links a:hover {
      background: var(--button-hover);
      color: white;
      transform: scale(1.05);
    }

  
    .dashboard {
      display: flex;
      gap: 20px;
      padding: 40px 20px;
    }

   
    .profile-card {
      flex: 1;
      background: var(--main-color);
      border-radius: 15px;
      padding: 20px;
      box-shadow: 0 10px 20px var(--card-shadow);
      color: var(--text-color);
      text-align: center;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: space-between;
      height: 100%;
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .profile-card:hover {
      transform: translateY(-10px);
      box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
    }

    .profile-card h3 {
      font-size: 1.5rem;
      margin-bottom: 10px;
    }

    .profile-card button {
      margin-top: 10px;
    }


    .main-content {
      flex: 3;
      display: grid;
      grid-template-columns: 2fr 2fr;
      gap: 20px;
    }

    .card {
      background: white;
      border-radius: 10px;
      padding: 20px;
      box-shadow: 0 8px 15px var(--card-shadow);
      text-align: center;
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .card:hover {
      transform: translateY(-10px);
      box-shadow: 0 12px 25px rgba(0, 0, 0, 0.2);
    }

    .card h3 {
      margin-bottom: 20px;
      color: var(--text-color);
      font-weight: bold;
    }

    .emoji {
      font-size: 3rem;
      margin-bottom: 10px;
    }

    #calendar {
      width: 100%;
    }

    #yoga-chart {
      width: 100%;
      height: 250px;
    }

    .view-options {
      display: flex;
      justify-content: center;
      gap: 10px;
      margin-bottom: 15px;
    }

    .view-options button {
      padding: 8px 12px;
      border-radius: 5px;
      border: none;
      background: var(--accent-color);
      color: var(--text-color);
      font-weight: bold;
      cursor: pointer;
      transition: background-color 0.3s ease, transform 0.2s ease;
    }

    .view-options button:hover {
      background: var(--button-hover);
      transform: scale(1.05);
    }
  </style>
</head>

<body>
  <!-- 상단 메뉴 -->
  <div class="top-menu">
    <h1>🔥 Yoga Dashboard</h1>
    <div class="menu-links">
      <a href="#">Home</a>
      <a href="#">프로그램</a>
      <a href="/boot/index5"">요금제</a>
    </div>
  </div>

  <!-- 대시보드 레이아웃 -->
  <div class="dashboard">
    <!-- 왼쪽 프로필 카드 -->
    <div class="profile-card">
      <h3>김선우</h3>
      <p>🌟 레벨: <strong>5</strong></p>
      <p>🕒 전체 요가 시간: <strong>45시간</strong></p>
      <button onclick="editInfo()">🔧 정보 수정</button>
      <button onclick="logout()">🚪 로그아웃</button>
    </div>

    <!-- 오른쪽 메인 콘텐츠 -->
    <div class="main-content">
      <!-- 캘린더 -->
      <div class="card">
        <div class="emoji">📅</div>
        <h3>운동 캘린더</h3>
        <div id="calendar"></div>
      </div>

      <!-- 요가 그래프 -->
      <div class="card">
        <div class="emoji">📊</div>
        <h3>요가 시간 그래프</h3>
        <div class="view-options">
          <button onclick="updateChart('daily')">일별</button>
          <button onclick="updateChart('weekly')">주별</button>
          <button onclick="updateChart('monthly')">월별</button>
        </div>
        <canvas id="yoga-chart"></canvas>
      </div>

      <!-- 목표 설정 -->
      <div class="card">
        <div class="emoji">🎯</div>
        <h3>목표 설정</h3>
        <p>당신의 목표를 설정하고 달성해보세요!</p>
        <form id="goal-form" onsubmit="setGoal(event)">
          <label for="goal-input" style="font-weight: bold; color: var(--text-color);">목표 시간 (분):</label>
          <input type="number" id="goal-input" min="1" placeholder="예: 60" required style="margin-top: 10px; padding: 10px; border-radius: 5px; border: 1px solid #ccc;">
          <button type="submit" style="margin-top: 15px; padding: 8px 12px; border: none; border-radius: 5px; background: var(--accent-color); color: var(--text-color); font-weight: bold; cursor: pointer;">
            목표 설정
          </button>
        </form>
        <p id="goal-status" style="margin-top: 15px; font-weight: bold; color: var(--text-color);"></p>
      </div>
    </div>
  </div>

  <!-- FullCalendar 및 Chart.js JS -->
  <script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script>
    function editInfo() {
      alert('정보 수정 화면으로 이동합니다.');
    }

    function logout() {
      alert('로그아웃 되었습니다.');
    }

    // FullCalendar Initialization
    document.addEventListener('DOMContentLoaded', function () {
      const calendarEl = document.getElementById('calendar');
      const calendar = new FullCalendar.Calendar(calendarEl, {
        initialView: 'dayGridMonth',
        locale: 'ko',
        events: [
          { title: '하타 요가', start: '2024-11-20' },
          { title: '아쉬탕가 요가', start: '2024-11-25' }
        ]
      });

      calendar.render();
    });

    // Chart.js Initialization with data switching
    let yogaChart;
    const chartData = {
      daily: {
        labels: ['11/20', '11/21', '11/22', '11/23', '11/24', '11/25', '11/26'],
        data: [60, 45, 50, 30, 40, 70, 65]
      },
      weekly: {
        labels: ['Week 1', 'Week 2', 'Week 3', 'Week 4'],
        data: [200, 180, 220, 240]
      },
      monthly: {
        labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
        data: [500, 600, 550, 580, 620, 700]
      }
    };

    document.addEventListener('DOMContentLoaded', function () {
      const ctx = document.getElementById('yoga-chart').getContext('2d');

      const config = {
        type: 'bar',
        data: {
          labels: chartData.daily.labels,
          datasets: [{
            label: '요가 시간 (분)',
            data: chartData.daily.data,
            backgroundColor: 'rgba(201, 228, 197, 0.7)',
            borderColor: 'rgba(201, 228, 197, 1)',
            borderWidth: 1
          }]
        },
        options: {
          responsive: true,
          scales: {
            y: {
              beginAtZero: true,
              title: {
                display: true,
                text: '시간 (분)'
              }
            }
          }
        }
      };

      yogaChart = new Chart(ctx, config);
    });

    function updateChart(viewType) {
      yogaChart.data.labels = chartData[viewType].labels;
      yogaChart.data.datasets[0].data = chartData[viewType].data;
      yogaChart.update();
    }

    // 목표 설정 로직
    function setGoal(event) {
      event.preventDefault(); // 폼 기본 동작 방지
      const goalInput = document.getElementById('goal-input').value;
      const goalStatus = document.getElementById('goal-status');
      
      if (goalInput > 0) {
        localStorage.setItem('yogaGoal', goalInput); // 로컬 스토리지에 저장
        goalStatus.textContent = `현재 목표: ${goalInput}분!`;
        goalStatus.style.color = 'green';
      } else {
        goalStatus.textContent = '올바른 목표 시간을 입력해주세요.';
        goalStatus.style.color = 'red';
      }
    }

    // 페이지 로드 시 목표 상태 표시
    document.addEventListener('DOMContentLoaded', function () {
      const savedGoal = localStorage.getItem('yogaGoal');
      const goalStatus = document.getElementById('goal-status');
      
      if (savedGoal) {
        goalStatus.textContent = `현재 목표: ${savedGoal}분!`;
        goalStatus.style.color = 'green';
      }
    });
  </script>
</body>
</html>
