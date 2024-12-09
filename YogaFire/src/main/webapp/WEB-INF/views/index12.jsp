<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>YogaFire 채팅방</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #F0FFF0;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .chat-container {
            width: 80%;
            max-width: 600px;
            height: 80vh;
            background: white;
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            display: flex;
            flex-direction: column;
            overflow: hidden;
        }

        .chat-header {
            background: url('images/요가배경이미지8.jpg') no-repeat center/cover;
            padding: 20px;
            color: white;
            text-align: center;
            font-size: 1.8rem;
            font-weight: bold;
        }

        .chat-body {
            flex: 1;
            padding: 20px;
            overflow-y: auto;
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .chat-message {
            max-width: 70%;
            padding: 15px;
            border-radius: 15px;
            font-size: 1rem;
            line-height: 1.6;
        }

        .user-message {
            align-self: flex-end;
            background: #2E8B57;
            color: white;
        }

        .bot-message {
            align-self: flex-start;
            background: #F8F8F8;
            color: black;
            border: 1px solid #DDD;
        }

        .chat-footer {
            padding: 10px 20px;
            background: white;
            display: flex;
            gap: 10px;
        }

        .chat-footer input {
            flex: 1;
            padding: 10px;
            border: 2px solid #2E8B57;
            border-radius: 8px;
            font-size: 1rem;
        }

        .chat-footer button {
            padding: 10px 20px;
            background: #2E8B57;
            color: white;
            font-size: 1rem;
            font-weight: bold;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .chat-footer button:hover {
            background: #228B47;
        }
    </style>
</head>

<body>

<div class="chat-container">
    <div class="chat-header">요가 상담 챗봇</div>

    <div class="chat-body" id="chatBody">
        <div class="bot-message chat-message">안녕하세요! 요가 상담 챗봇입니다. 무엇을 도와드릴까요?</div>
    </div>

    <div class="chat-footer">
        <input type="text" id="userInput" placeholder="메시지를 입력하세요...">
        <button onclick="sendMessage()">전송</button>
    </div>
</div>

<script>
    function sendMessage() {
        const chatBody = document.getElementById("chatBody");
        const userInput = document.getElementById("userInput");

        if (userInput.value.trim() !== "") {
           
            const userMessage = document.createElement("div");
            userMessage.className = "user-message chat-message";
            userMessage.textContent = userInput.value;
            chatBody.appendChild(userMessage);

            
            setTimeout(() => {
                const botMessage = document.createElement("div");
                botMessage.className = "bot-message chat-message";
                botMessage.textContent = "도움을 드릴 수 있는 요가 자세나 기능을 알려주세요!";
                chatBody.appendChild(botMessage);
                chatBody.scrollTop = chatBody.scrollHeight;
            }, 1000);

            userInput.value = "";
            chatBody.scrollTop = chatBody.scrollHeight;
        }
    }
</script>

</body>
</html>
