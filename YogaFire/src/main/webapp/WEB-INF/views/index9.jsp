<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>프로필 수정</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    :root {
      --main-color: #7DCEA0;
      --accent-color: #FDE2E2; 
      --background-color: #FDE2E2; 
      --text-color: #2C3E50;
      --button-hover: #5DADE2;
      --card-shadow: rgba(0, 0, 0, 0.1);
    }

    body {
      font-family: 'Arial', sans-serif;
      margin: 0;
      padding: 0;
      background: var(--background-color);
      overflow-x: hidden;
    }


    .balloon {
      width: 50px;
      height: 70px;
      position: absolute;
      bottom: -100px;
      background-color: rgba(255, 99, 132, 0.7);
      border-radius: 50%;
      animation: floatUp 10s infinite ease-in-out;
      z-index: -1;
    }

    @keyframes floatUp {
      0% {
        transform: translateY(0) scale(1);
        opacity: 1;
      }
      100% {
        transform: translateY(-120vh) scale(1.5);
        opacity: 0;
      }
    }


    .star {
      position: absolute;
      width: 10px; /
      height: 10px;
      background-color: white; 
      border-radius: 50%;
      animation: sparkle 3s infinite ease-in-out;
      z-index: -1;
      box-shadow: 0 0 15px rgba(255, 255, 255, 0.8);
    }

    @keyframes sparkle {
      0%, 100% {
        opacity: 0;
        transform: scale(0.5);
      }
      50% {
        opacity: 1;
        transform: scale(1.5);
      }
    }

    .container {
      max-width: 800px;
      margin: 50px auto;
      padding: 20px;
      background-color: white;
      border-radius: 15px;
      box-shadow: 0 8px 15px var(--card-shadow);
      position: relative;
      z-index: 1; /
    }

    .header {
      text-align: center;
      margin-bottom: 30px;
    }

    .header h1 {
      font-size: 2.5rem;
      font-weight: bold;
      color: var(--main-color);
      margin-bottom: 10px;
    }

    .header p {
      color: var(--text-color);
      font-size: 1.2rem;
    }

    .form-group {
      margin-bottom: 20px;
    }

    .form-group label {
      font-size: 1rem;
      font-weight: bold;
      color: var(--text-color);
      margin-bottom: 10px;
    }

    .profile-container {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-bottom: 20px;
    }

    .profile-container img {
      width: 100px;
      height: 100px;
      border-radius: 50%;
      border: 2px solid var(--main-color);
      background-color: #d9d9d9;
    }

    .profile-container button {
      background-color: var(--main-color);
      color: white;
      font-size: 1rem;
      font-weight: bold;
      padding: 8px 15px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s ease, transform 0.2s ease;
    }

    .profile-container button:hover {
      background-color: var(--button-hover);
      transform: scale(1.05);
    }

    .btn {
      padding: 10px 20px;
      border-radius: 8px;
      font-size: 1.2rem;
      font-weight: bold;
      background-color: var(--main-color);
      color: white;
      border: none;
      box-shadow: 0 5px 10px var(--card-shadow);
      transition: background-color 0.3s ease, transform 0.2s ease;
    }

    .btn:hover {
      background-color: var(--button-hover);
      transform: scale(1.05);
    }
  </style>
</head>
<body>
  
  <div id="balloon-container"></div>
  <div id="star-container"></div>

  <div class="container">
    <div class="header">
      <h1>📝 프로필 수정</h1>
      <p>프로필 사진과 정보를 수정하세요!</p>
    </div>


    <!-- 정보 수정 폼 -->
    <form action="/boot/member/${member.id}/edit" method="post"
		enctype="multipart/form-data">
     <div class="profile-container" >
       <img src="images/${member.profic}" alt="프로필 이미지" id="profile-preview">
       <label for="profile-upload" class="btn">이미지 업로드</label>
      <input type="file" id="profile-upload" name="proficfile" style="display: none;" accept="image/*" onchange="previewImage(event)">
    </div>
      <div class="form-group">
        <label for="username">👤 닉네임</label>
        <input type="text" id="username" name="nick" class="form-control" placeholder="사용자 이름을 입력하세요" value="${member.nick}" }>
      </div>
      <div class="form-group">
        <label for="password">🔑 현재 비밀번호</label>
        <input type="password" id="password" class="form-control" value="${member.password}">
      </div>
      <div class="form-group">
        <label for="new-password">🔑 변경할 비밀번호</label>
        <input type="password" id="new-password" name="password" class="form-control" placeholder="새 비밀번호를 입력하세요">
      </div>

      <!-- 저장 버튼 -->
      <div class="text-center mt-4">
        <button type="submit" class="btn">💾 저장</button>
        <button type="button" class="btn" onclick="location.href='/boot/index4'">🔙 돌아가기</button>
        <button type="button" class="btn" onclick=>회원탈퇴</button>
      </div>
    </form>
  </div>

  <script>

    function previewImage(event) {
      const reader = new FileReader();
      reader.onload = function () {
        const profilePreview = document.getElementById('profile-preview');
        profilePreview.src = reader.result;
      };
      reader.readAsDataURL(event.target.files[0]);
    }

   
    function createBalloon() {
      const balloon = document.createElement('div');
      balloon.classList.add('balloon');
      balloon.style.left = Math.random() * window.innerWidth + 'px';
      balloon.style.backgroundColor = `hsl(${Math.random() * 360}, 70%, 80%)`;
      document.getElementById('balloon-container').appendChild(balloon);

      setTimeout(() => {
        balloon.remove();
      }, 10000); 
    }

 
    function createStar() {
      const star = document.createElement('div');
      star.classList.add('star');
      star.style.left = Math.random() * window.innerWidth + 'px';
      star.style.top = Math.random() * window.innerHeight + 'px';
      document.getElementById('star-container').appendChild(star);

      setTimeout(() => {
        star.remove();
      }, 3000); 
    }

    setInterval(createBalloon, 1000); 
    setInterval(createStar, 500); 
  </script>
</body>
</html>
