<!DOCTYPE html>
<%@page import="com.smhrd.yoga.model.userInfo"%>
<%@page import="com.smhrd.yoga.model.userhistory"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>YogaFire</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background-color: #f5f5f5;
            color: #333;
            display: flex;
        }

        .sidebar {
            width: 300px;
            background-color: #3CB371;
            color: white;
            padding: 20px;
            height: auto;
            display: flex;
            flex-direction: column;
            align-items: center;
            animation: fadeInLeft 1s ease-in-out;
        }

        .sidebar .profile {
            text-align: center;
            margin-bottom: 20px;
        }

        .sidebar .profile img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-bottom: 10px;
            border: 3px solid white;
            animation: bounce 2s infinite;
        }

        .sidebar .profile h2 {
            font-size: 1.5rem;
            margin: 0;
            animation: fadeIn 2s;
        }

        .sidebar .stats {
            margin: 20px 0;
            text-align: center;
        }

        .sidebar .stats .level {
            font-size: 1.2rem;
            margin-bottom: 10px;
        }

        .sidebar .actions button {
            background-color: white;
            color: #3CB371;
            border: none;
            padding: 10px 20px;
            margin-top: 10px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            width: 100%;
        }

        .sidebar .actions button:hover {
            background-color: #2E8B57;
            color: white;
            transform: scale(1.1);
        }

        .main-content {
            flex-grow: 1;
            padding: 20px;
        }

        .main-content h1 {
            font-size: 1.8rem;
            color: #3CB371;
            margin-bottom: 20px;
            animation: fadeInDown 1s;
        }

        .history-item {
            display: flex;
            align-items: center;
            background-color: white;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 15px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s;
            animation: fadeInUp 1s;
        }

        .history-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 10px rgba(0, 0, 0, 0.15);
        }

        .history-item img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            border: 2px solid #3CB371;
            margin-right: 20px;
        }

        .history-item .details {
            flex: 1;
        }

        .history-item .details h2 {
            font-size: 1.4rem;
            margin: 0 0 10px;
            color: #333;
        }

        .history-item .details h3 {
            font-size: 1.2rem;
            margin: 0;
            color: #666;
        }

        .history-item .tags {
            margin-top: 10px;
        }

        .tag {
            display: inline-block;
            background-color: #3CB371;
            color: white;
            padding: 5px 10px;
            font-size: 0.9rem;
            border-radius: 8px;
            margin-right: 5px;
        }

        .emoji {
            font-size: 1.5rem;
            margin-right: 10px;
        }

        .highlight {
            padding: 5px;
            border-radius: 8px;
        }
    </style>
</head>
<body>

<% List<userhistory> userscore = (List<userhistory>)request.getAttribute("userscore"); %>
<% userInfo member = (userInfo)session.getAttribute("member");
Integer totaltime = (Integer)session.getAttribute("totaltime");%>

<div class="sidebar">
    <div class="profile">
        <img src="" alt="프로필">
        <h2>사용자</h2>
    </div>
    <div class="stats">
        <div class="level">🌟 레벨: 5</div>
        <% if (totaltime != null) { %>
        <div class="time">🕒 전체 요가 시간:<%=totaltime.intValue()/3600 %>시간 <%=totaltime.intValue()/60 %>분 <%} else { totaltime = 0; %>🕒 전체 요가 시간:  <%=totaltime %>분 <%} %>
    </div>
    <div class="actions">
        <button onclick="location.href='/boot/member/${member.id}/edit'">🔧 정보 수정</button>
      <button onclick="location.href='/boot/myPage'">마이페이지</button>
    </div>
</div>

<div class="main-content">
    <h1>플레이 이력</h1>
	<%if (userscore != null && !userscore.isEmpty()) { %>
	<% for (userhistory u : userscore) { %>
    <div class="history-item highlight">
        <img src="" alt="요가 자세">
        <div class="details">
            <h2><span class="emoji">🧘</span><%=u.getFlow_title() %></h2>
            <h3>날짜: <%=u.getActivity_at() %></h3>
            <h3>점수: <%=u.getAvg_activity_score() %></h3>

        </div>
    </div>
    	<%} %>
	<%}else {%>
    <div class="history-item">
        <img src="" alt="요가 자세">
        <div class="details">
		<p><strong>유저 운동내력이 없어요🥲<br> 요가파이어는 <%=member.getNick()%>님을 기다리고 있답니다!</strong>

        </div>
    </div>
	<%} %>

</div>

</body>
</html>
