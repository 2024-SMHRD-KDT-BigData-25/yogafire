<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yoga Fire 회원가입</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
    <style>
    
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Inter', sans-serif;
        }

        body {
            background: linear-gradient(135deg, #e0f7fa, #f1f8e9);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: white;
            border-radius: 16px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            width: 400px;
            padding: 40px 30px;
            text-align: center;
        }

        .container h1 {
            font-size: 2rem;
            color: #00796b;
            margin-bottom: 10px;
            font-weight: 600;
        }

        .container p {
            color: #6d6d6d;
            margin-bottom: 30px;
            font-size: 1rem;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group input {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #e0e0e0;
            border-radius: 8px;
            font-size: 1rem;
            outline: none;
            background-color: #f9f9f9;
            transition: all 0.3s ease;
        }

        .form-group input:focus {
            border-color: #00796b;
            background-color: #ffffff;
            box-shadow: 0 0 5px rgba(0, 121, 107, 0.3);
        }

        .btn {
            background: #00796b;
            color: white;
            border: none;
            padding: 12px 20px;
            font-size: 1rem;
            border-radius: 8px;
            cursor: pointer;
            width: 100%;
            transition: all 0.3s ease;
        }

        .btn:hover {
            background: #004d40;
        }

        .link {
            margin-top: 20px;
            font-size: 0.9rem;
            color: #00796b;
        }

        .link a {
            color: #00796b;
            text-decoration: none;
            font-weight: 600;
        }

        .link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>회원가입</h1>
        <p>YogaFire에 가입하고 시작하세요!</p>
        <form action="/boot/member" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <input type="text" name="id" id="id" placeholder="아이디" required>
            </div>
            <div class="form-group">
                <input type="password" name="password" id="password" placeholder="비밀번호" required>
            </div>
            <div class="form-group">
                <input type="text" name="nick" id="nick" placeholder="닉네임" required>
            </div>
            <button type="submit" class="btn">가입하기</button>
        </form>
        <div class="link">
            <p>이미 계정이 있으신가요? <a href="/boot/login">로그인</a></p>
        </div>
    </div>
</body>
</html>
