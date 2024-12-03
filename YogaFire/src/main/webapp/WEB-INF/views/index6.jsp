<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 포함 로그인 페이지</title>
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300" rel="stylesheet">
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Source Sans Pro', sans-serif;
        }

        body {
            font-family: 'Source Sans Pro', sans-serif;
            color: white;
            background: linear-gradient(135deg, #c2e59c, #64b3f4);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }

        .wrapper {
            background: white;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            width: 400px;
            padding: 30px;
            position: relative;
        }

        .logo {
            text-align: center;
            font-size: 3rem;
            font-weight: bold;
            color: #64b3f4;
            margin-bottom: 20px;
            text-transform: uppercase;
            animation: flicker 1.5s infinite;
            text-shadow: 
                0 0 10px #ff4500,
                0 0 20px #ff6347,
                0 0 30px #ffa500,
                0 0 40px #ff4500;
        }

        @keyframes flicker {
            0%, 100% {
                text-shadow: 
                    0 0 10px #ff4500,
                    0 0 20px #ff6347,
                    0 0 30px #ffa500,
                    0 0 40px #ff4500;
            }
            50% {
                text-shadow: 
                    0 0 15px #ff6347,
                    0 0 25px #ff7e5f,
                    0 0 35px #ff4500,
                    0 0 45px #ffa500;
            }
        }

        h2 {
            font-size: 1.5rem;
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        input {
            padding: 10px 15px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 1rem;
            outline: none;
            transition: border 0.3s ease, background-color 0.3s ease;
        }

        input:focus {
            border-color: #64b3f4;
            background-color: #e8f0fe;
        }

        button {
            padding: 12px 20px;
            font-size: 1rem;
            border: none;
            border-radius: 8px;
            background: #64b3f4;
            color: white;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.2s ease;
        }

        button:hover {
            background: #4a90e2;
            transform: translateY(-2px);
        }

        .switch {
            text-align: center;
            font-size: 0.9rem;
            color: #777;
        }

        .switch a {
            color: #64b3f4;
            text-decoration: none;
            font-weight: bold;
            cursor: pointer;
        }

        .bg-bubbles {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
        }

        .bg-bubbles li {
            position: absolute;
            list-style: none;
            display: block;
            width: 40px;
            height: 40px;
            background-color: rgba(255, 255, 255, 0.15);
            bottom: -160px;
            -webkit-animation: square 25s infinite;
            animation: square 25s infinite;
            transition-timing-function: linear;
        }

        .bg-bubbles li:nth-child(1) { left: 10%; }
        .bg-bubbles li:nth-child(2) { left: 20%; width: 80px; height: 80px; animation-delay: 2s; animation-duration: 17s; }
        .bg-bubbles li:nth-child(3) { left: 25%; animation-delay: 4s; }
        .bg-bubbles li:nth-child(4) { left: 40%; width: 60px; height: 60px; animation-duration: 22s; background-color: rgba(255, 255, 255, 0.25); }
        .bg-bubbles li:nth-child(5) { left: 70%; }
        .bg-bubbles li:nth-child(6) { left: 80%; width: 120px; height: 120px; animation-delay: 3s; background-color: rgba(255, 255, 255, 0.2); }
        .bg-bubbles li:nth-child(7) { left: 32%; width: 160px; height: 160px; animation-delay: 7s; }
        .bg-bubbles li:nth-child(8) { left: 55%; width: 20px; height: 20px; animation-delay: 15s; animation-duration: 40s; }
        .bg-bubbles li:nth-child(9) { left: 25%; width: 10px; height: 10px; animation-delay: 2s; animation-duration: 40s; background-color: rgba(255, 255, 255, 0.3); }
        .bg-bubbles li:nth-child(10) { left: 90%; width: 160px; height: 160px; animation-delay: 11s; }

        @-webkit-keyframes square {
            0% { transform: translateY(0); }
            100% { transform: translateY(-700px) rotate(600deg); }
        }

        @keyframes square {
            0% { transform: translateY(0); }
            100% { transform: translateY(-700px) rotate(600deg); }
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <div class="logo">🔥Yoga Fire🔥</div>
        <h2>Feel the Heat of Yoga</h2>
        <form>
            <input type="id" placeholder="id" required>
            <input type="password" placeholder="Password" required>
            <button type="submit">로그인</button>
            
        </form>
    </div>
    <ul class="bg-bubbles">
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
    </ul>
</body>
</html>
