<%@page import="com.smhrd.yoga.model.FlowInfo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요가 프로그램 리스트 페이지</title>
<link rel="stylesheet" href="css/index11.css">
<style>
    :root {
      --main-color: #7DCEA0;
      --accent-color: #F2F3F4;
      --background-color: #EAF2F8;
      --text-color: #2C3E50;
      --button-hover: #5DADE2;
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
      align-items: center;
      justify-content: space-between;
      position: sticky;
      top: 0;
      z-index: 1000000;
      box-shadow: 0 4px 6px var(--card-shadow);
    }
.top-menu h1 {
      font-size: 2.5rem;
      font-weight: bold;
      color: white;
      margin: 0;
    }
    .menu-links {
      display: flex;
      gap: 20px;
    }

    .menu-links a {
      text-decoration: none;
      color: white;
      padding: 10px 20px;
      border-radius: 5px;
      background: var(--button-hover);
      font-weight: bold;
      transition: background-color 0.3s ease, transform 0.2s ease;
    }

    .menu-links a:hover {
      background: white;
      color: var(--text-color);
      transform: scale(1.05);
    }
</style>
</head>
<body>

<%  List<FlowInfo> list1 = (List<FlowInfo>)request.getAttribute("flowList1"); 
	List<FlowInfo> list2 = (List<FlowInfo>)request.getAttribute("flowList2"); 
	List<FlowInfo> list3 = (List<FlowInfo>)request.getAttribute("flowList3"); 
%>





  <div class="top-menu">
    <h1>🔥 Yoga Program 🔥</h1>
    <div class="menu-links">
      <a href="/boot/">Home</a>
      <a href="#">프로그램</a>
      <a href="/boot/index5">요금제</a>
    </div>
  </div>
 
<div class="container">    
        <div class="list">
            <!-- 초급 -->
            <div class="category">
                <h2>Beginner</h2>
                <div class="items">
                <% for(int i=0; i<list1.size(); i++){ %>
                    <div class="item" data-id="beginner1">
                        <img src="images/yogalistimg.jpg" alt="Beginner Yoga">
                        <p><%=list1.get(i).getFlow_title() %></p>
                    </div>
                <% } %>
                </div>
            </div>
            
            <!-- 중급 -->
            <div class="category">
                <h2>Intermediate</h2>
                <div class="items">
                <% for(int i=0; i<list2.size(); i++){ %>
                    <div class="item" data-id="intermediate1">
                        <img src="img/yogalistimg.jpg" alt="Intermediate Yoga">
                        <p><%=list2.get(i).getFlow_title() %></p>
                    </div>
                <% } %>
                </div>
            </div>

            <!-- 고급 -->
            <div class="category">
                <h2>Advanced</h2>
                <div class="items">
                    <% for(int i=0; i<list3.size(); i++){ %>
                    <div class="item" data-id="advanced1">
                        <img src="img/배경격이미지2.jpg" alt="Advanced Yoga">
                        <p><%=list3.get(i).getFlow_title() %></p>
                    </div>
                    <% } %>
                </div>
            </div>
        </div>
    </div>		
<script src="js/index11.js"></script>
 
</body>
</html>