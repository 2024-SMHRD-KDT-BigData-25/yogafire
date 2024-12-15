<!DOCTYPE html>
<%@page import="com.smhrd.yoga.model.userInfo"%>
<%@page import="com.smhrd.yoga.model.FlowInfo"%>
<%@page import="com.smhrd.yoga.model.myPage"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Yoga Dashboard</title>
    <!-- jQuery를 먼저 로드 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <!-- FullCalendar 및 Chart.js CSS -->
  <link href="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.css" rel="stylesheet">
  <style>
    :root {
      --main-color: #7DCEA0;
      --accent-color: #F2F3F4;
      --background-color: #EAF2F8;
      --text-color: #2C3E50;
      --button-hover:  #3CB371;
      --card-shadow: rgba(0, 0, 0, 0.1);
    }

    body {
      font-family: 'Arial', sans-serif;
      margin: 0;
      padding: 0;
      background: var(--background-color);
    }

    .top-menu {
      background-color: var(--main-color);
      padding: 20px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      box-shadow: 0 4px 6px var(--card-shadow);
    }

    .top-menu h1 {
      font-size: 2.5rem;
      color: white;
      margin: 0;
    }

    .menu-links a {
      text-decoration: none;
      color: white;
      padding: 10px 20px;
      background: var(--button-hover);
      border-radius: 5px;
      font-weight: bold;
      margin-left: 10px;
      transition: 0.3s;
    }

    .menu-links a:hover {
      background: white;
      color: var(--text-color);
    }

    .dashboard {
      display: grid;
      grid-template-columns: 300px auto;
      grid-template-rows: auto auto auto;
      
      gap: 30px;
      padding: 30px;
    }

    .profile-card {
      background: var(--main-color);
      color: white;
      border-radius: 15px;
      padding: 20px;
      text-align: center;
      box-shadow: 0 10px 20px var(--card-shadow);
      display: flex;
      flex-direction: column;
      align-items: center;
      
      grid-row: span 2;
      
    }

    .profile-card img {
      width: 100px;
      height: 100px;
      border-radius: 50%;
      margin-bottom: 15px;
    }

    .profile-card button {
      padding: 10px 20px;
      background: white;
      color: var(--main-color);
      font-weight: bold;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      margin-top: 10px;
    }

    .profile-card button:hover {
      background: var(--button-hover);
      color: white;
    }

    .main-content {
    
      
      display: grid;
    grid-template-columns:1fr 1fr;
    grid-template-rows: auto auto;
    gap: 30px;
    }

    .card {
      background: white;
      border-radius: 15px;
      padding: 20px;
      box-shadow: 0 8px 15px var(--card-shadow);
      grid-row: span 2;
      
     
      
    }

    .welcome {
      background: white;
      border-radius: 15px;
      padding: 20px;
      text-align: center;
    }

    .items {
      display: flex;
      overflow-x: auto;
      gap: 20px;
    }

    .item {
      width: 150px;
      text-align: center;
      padding: 10px;
    }

    .item img {
      width: 100%;
      border-radius: 10px;
      transition: transform 0.3s;
    }

    .item img:hover {
      transform: scale(1.05);
      }
.card.recent .items {
  display: flex !important;
  flex-wrap: wrap !important;
  gap: 20px !important;
}

    }
    
   card.recent .item {
  width: calc(25% - 20px); 
  max-width: 200px; 
  text-align: center;
}

.card.recent .item img {
  width: 100%;
  height: auto;
  border-radius: 10px;
  transition: transform 0.3s ease;
}

.card.recent .item img:hover {
  transform: scale(1.1);
}

.itembox {
	display: flex;
    gap: 45px;
    padding-left: 30px;
}
  .chatbot-btn {
    position: fixed;
    bottom: 30px;
    right: 30px;
    background-color: var(--main-color);
    color: white;
    border: none;
    padding: 15px 20px;
    font-size: 1.5rem;
    border-radius: 50%;
    cursor: pointer;
    box-shadow: 0 4px 8px var(--card-shadow);
    transition: transform 0.3s ease;
    z-index: 1000;
  }

  .chatbot-btn:hover {
    background-color: var(--button-hover);
    transform: scale(1.1);
  }

  .chatbot-window {
    position: fixed;
    bottom: 100px;
    right: 30px;
    width: 350px;
    height: 500px;
    background: white;
    border-radius: 15px;
    box-shadow: 0 4px 8px var(--card-shadow);
    display: none;
    flex-direction: column;
    z-index: 1000;
    overflow: hidden;
  }

  .chatbot-header {
    background: var(--main-color);
    color: white;
    padding: 10px;
    text-align: center;
    font-weight: bold;
  }

  .chatbot-body {
    flex: 1;
    padding: 20px;
    overflow-y: auto;
  }

  .chatbot-footer {
    padding: 10px;
    background: var(--accent-color);
    display: flex;
    align-items: center;
  }

  .chatbot-footer input {
    flex: 1;
    padding: 8px;
    border: 1px solid var(--main-color);
    border-radius: 5px;
  }

  .chatbot-footer button {
    padding: 8px 15px;
    margin-left: 5px;
    background: var(--main-color);
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }
  .toggle-button {
margin-right: 5px;
    background-color: #7DCEA0;
    height: 30px;
    border-radius: 15px;
    border: 0px;
    color: white;
}
.start-button {
margin-left: 5px;
    background-color: #7DCEA0;
    height: 30px;
    border-radius: 15px;
    border: 0px;
    color: white;
}   
.toggle-button:hover {
background: #5DADE2;
    transform: scale(1.05);
}
.start-button:hover {
background: #5DADE2;
    transform: scale(1.05);
}
.exp {
	display: none;
}
.flowimg {
	display: none;
}
.details {
    opacity: 0;
    transition: opacity 0.5s ease;
}

.details.visible {
    opacity: 1;
}
.item.highlight {
    border: 2px solid #f39c12; /* 강조 표시를 위한 테두리 색상 */
	border-radius: 20px;
}
.itemdetails {
	padding: 20px;
    background-color: lightgray;
    margin: 20px;
    border-radius: 10px;
    display: flex;
    flex-direction: row;
    align-items: center;
    gap: 40px;
}
.itemdetails div{
	width: 30%
}
.itemdetails img {
	width: 62%;
	border-radius: 20px;
}
  </style>
</head>

<body>

	<%  List<myPage> time = (List<myPage>)session.getAttribute("time");
		FlowInfo flowlist = (FlowInfo)session.getAttribute("flowlist");
		Integer totaltime = (Integer)session.getAttribute("totaltime");
		Integer todaycal = (Integer) session.getAttribute("todaycal"); 
		Integer totalcal = (Integer) session.getAttribute("totalcal");
		Integer alltodaycal = (Integer)session.getAttribute("alltodaycal");
		List<FlowInfo> randomFlows = (List<FlowInfo>)session.getAttribute("randomflow");
		String message = (String)session.getAttribute("message");
		userInfo member = (userInfo)session.getAttribute("member"); %>

  <div class="top-menu">
    <h1>마이페이지</h1>
    <div class="menu-links">
      <a href="/boot/">🏠Home</a>
      <a href="/boot/${member.id}/history">📜유저 이력</a>
      <a href="/boot/programs">📚프로그램</a>
      <a href="/boot/membership">💳요금제</a>
      <a href="/boot/membership">🔗공유하기</a>
    </div>
  </div>

 

  <div class="dashboard">
  
   <div class="profile-card">
      <img src="images/${member.profic}" alt="Profile Picture">
      <h3>${member.nick}</h3>
      <p>🌟 레벨: <strong>5</strong></p>
            <% if (totaltime != null) { %>
      <p>🕒 전체 요가 시간: <strong><%=totaltime.intValue()/3600 %>시간 <%=totaltime.intValue()/60 %>분 <%} else { totaltime = 0; %><p>🕒 전체 요가 시간: <strong> <%=totaltime %>분 <%} %> </strong></p>
      <button onclick="location.href='/boot/member/${member.id}/edit'">🔧 정보 수정</button>
      <button onclick="location.href='logout'">🚪 로그아웃</button>
    </div>
  
   <div class="welcome">
    <h2>✨ ${message} ✨</h2>
  </div>
  
   

    <div class="main-content">
      <div class="card">
        <h3>운동 캘린더</h3>
        <div id="calendar"></div>
      </div>

      <div class="card">
        <h3>요가 시간 그래프</h3>
        <div class="view-options">
          <button onclick="updateChart('daily')">일별</button>
          <button onclick="updateChart('weekly')">주별</button>
          <button onclick="updateChart('monthly')">월별</button>
        </div>
        <canvas id="yoga-chart"></canvas>

        <div class="score-card">
          <h4>나의 통계</h4>
          <% double rate = Math.round((double)todaycal.intValue() / alltodaycal.intValue() * 100); 
          		if (todaycal.intValue() == 0) {%>
          			<p>오늘은 <%=member.getNick()%>님의 운동한 이력이 없어요🥲 </p>
        	<%} else if (rate >= 50.0) { %>
         		 	<p>요가파이어의 전체 회원들 중 오늘 <strong><%=member.getNick()%></strong>님의 운동량은 <strong><%=Math.round((double)todaycal.intValue() / alltodaycal.intValue() * 100)%>%</strong>!</p>
          			<p>열심히 하셨네요</p>
        	<%} else { %>
        			 <p>요가파이어의 전체 회원들 중 오늘 <strong><%=member.getNick()%></strong>님의 운동량은 <strong><%=Math.round((double)todaycal.intValue() / alltodaycal.intValue() * 100)%>%</strong>!</p>
        			 <p>조금만 분발해 주세요</p>
		   	<%} %>
    		
    	 <%	if (todaycal != null) {
		  %>
          <p>📈 <strong>오늘 소모한 칼로리 :</strong> <%=todaycal.intValue()%>cal <%} else {%><p>📈 <strong>오늘 소모한 칼로리 :</strong> 0cal <%} %></p>
          
    	 <% if (totalcal != null) {
		  %>
          <p>🔄 <strong>누적 칼로리:</strong><%= totalcal.intValue()%>cal <%} else { %><p>🔄 <strong>누적 칼로리:</strong> 0cal <%} %></p>
        </div>
      </div>

    

     
    </div>
    
      <div class="card recent">
     <h3>📂 최근 실행 시퀀스</h3>
        <div class="items">
		<%if (flowlist != null) { %>
		  <div class="item">
             <img src="images/yogaflow/<%=flowlist.getFlow_img() %>" alt="Beginner Yoga">
             <p><%=flowlist.getFlow_title() %> <%} else {%> <div data-id="beginner1"> <%=member.getNick()%>님의 최근 운동 내역이 없어요😓 <%}%></p>
          </div>
        </div>
      </div>
      
     <div class="card recommend">
        <h3>🌟 추천 시퀀스</h3>
        <div class="itembox">
		<%  if (randomFlows != null) {
                for (FlowInfo flow : randomFlows) {%>
        			<div class="items">
            		  <div class="item" data-id="beginner1">
            		  	<img src="images/yogaflow/<%= flow.getFlow_img() %>" alt="추천 시퀀스">
            		  	<p><%= flow.getFlow_title()%></p>
            		  	<div class="exp"><%=flow.getFlow_exp() %></div>
                        <div class="flowimg">
                        	<img src="images/yogaflow/요가시퀀스<%=flow.getFlow_img() %>">
                        </div>	
          			  </div>
       				 </div>
               	<% }
     	  }%>
      </div>
  </div>

<button class="chatbot-btn" id="chatbot-btn" onclick="location.href='http://localhost:8097/boot/chat'">💬</button>


  <script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script>
  
  
  
    
  <%// 빈 리스트를 처리할 수 있도록 기본 배열을 설정
    StringBuilder labels = new StringBuilder();
    StringBuilder data = new StringBuilder();
    
    for (int i = 0; i < time.size(); i++) {
        myPage my = time.get(i);
        // labels 배열에 activityAt 추가
        labels.append("'").append(my.getActivity_at()).append("'");

        // totalPsTime을 초에서 분으로 변환 (60으로 나누기)
        int totalMinutes = my.getTotalPsTime() / 60;  // 초를 분으로 변환
        
        // data 배열에 totalPsTime 추가
        data.append(totalMinutes);
        
        // 마지막 항목이 아니면 콤마 추가
        if (i < time.size() - 1) {
            labels.append(", ");
            data.append(", ");
        }
        }
   %>
  
    document.addEventListener('DOMContentLoaded', function () {
	      // 캘린더 초기화
	      const calendarEl = document.getElementById('calendar');
	      const calendar = new FullCalendar.Calendar(calendarEl, {
	        initialView: 'dayGridMonth',
	        locale: 'ko',
	        events: [
	        	 $.ajax({
	        		 type: "get",
	        		 url: "/boot/calendarList",
	        		 beforeSend: function() {
	        		     console.log("AJAX 요청이 시작되었습니다.");
	        		 },
	        		 success: function (data) {
	        			 console.log("AJAX 요청 성공, 서버 응답:", data);
	        			 if (data != null) {
	        				 for (let i = 0; i < data.length; i++) {
	        					 calendar.addEvent({
	        						 title: data[i].flow_title,
	                                 start: data[i].activity_at
	        					 })
	        				 }
	        			 }
	        		 },
	        		    error: function(xhr, status, error) {
	        		        console.error("AJAX 요청 실패:", error);
	        		    }
	        	 })
	        ]
	      });
	      calendar.render();

      // 차트 데이터
      const ctx = document.getElementById('yoga-chart').getContext('2d');
      const chartData = {
        daily: {
          labels: [<%= labels.toString() %>],
          data: [<%= data.toString() %>]
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

      // 차트 초기화
      const yogaChart = new Chart(ctx, {
        type: 'bar',
        data: {
          labels: chartData.daily.labels,
          datasets: [{
            label: '요가 시간 (분)',
            data: chartData.daily.data,
            backgroundColor: 'rgba(125, 206, 160, 0.7)',
            borderColor: 'rgba(125, 206, 160, 1)',
            borderWidth: 1
          }]
        },
        options: {
          responsive: true,
          scales: {
            y: { beginAtZero: true }
          }
        }
      });

      // 차트 데이터 업데이트 함수
      window.updateChart = function (viewType) {
        yogaChart.data.labels = chartData[viewType].labels;
        yogaChart.data.datasets[0].data = chartData[viewType].data;
        yogaChart.update();
      };
    });

    function editInfo() {
      alert('정보 수정 화면으로 이동합니다.');
    }

    function logout() {
      alert('로그아웃 되었습니다.');
    }
  </script>
<script>

</script>  
<script src="js/index12.js"></script>
