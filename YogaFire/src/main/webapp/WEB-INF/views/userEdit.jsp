<!DOCTYPE html>
<%@page import="com.smhrd.yoga.model.userInfo"%>
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
      --text-color: #2C3E50;
      --button-hover: #5DADE2;
      --card-shadow: rgba(0, 0, 0, 0.1);
    }

    body {
      font-family: 'Arial', sans-serif;
      margin: 0;
      padding: 0;
      background: #ffffff; /* 배경 색상을 단순한 흰색으로 설정 */
    }

    .container {
      max-width: 800px;
      margin: 50px auto;
      padding: 20px;
      background-color: white;
      border-radius: 15px;
      box-shadow: 0 8px 15px var(--card-shadow);
      position: relative;
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
  <% userInfo member = (userInfo)session.getAttribute("member");%>

  <div class="container">
    <div class="header">
      <h1>📝 프로필 수정</h1>
      <p>프로필 사진과 정보를 수정하세요!</p>
    </div>

    <!-- 정보 수정 폼 -->
    <form action="/boot/member/${member.id}/edit" method="post" enctype="multipart/form-data">
      <div class="profile-container"> 
        <img src="${pageContext.request.contextPath}/images/${member.profic}" alt="프로필 이미지" id="profile-preview">
        <label for="profile-upload" class="btn">이미지 업로드</label>
        <input type="file" id="profile-upload" name="proficfile" style="display: none;" accept="image/*" onchange="previewImage(event)">
      </div>
      <div class="form-group">
        <label for="username">👤 닉네임</label>
        <input type="text" id="username" name="nick" class="form-control" placeholder="사용자 이름을 입력하세요" value="${member.nick}">
      </div>
      <div class="form-group">
        <label for="password">🔑 현재 비밀번호</label>
        <input type="password" id="password" class="form-control" value="${member.password}">
      </div>
      <div class="form-group">
        <label for="new-password">🔑 변경할 비밀번호</label>
        <input type="password" id="new-password" name="password" class="form-control" placeholder="새 비밀번호를 입력하세요" required>
      </div>

      <!-- 저장 버튼 -->
      <div class="text-center mt-4">
        <button type="submit" class="btn">💾 저장</button>
        <button type="button" class="btn" onclick="location.href='/boot/myPage'">🔙 돌아가기</button>
        <button type="button" class="btn" onclick="deleteMember('<%=member.getId()%>')">회원탈퇴</button>
      </div>
    </form>
  </div>

  <script>
    function deleteMember(id) {
      let choice = confirm("정말 탈퇴하시겠습니까?");
      if (choice) {
        location.href = "/boot/member/" + id + "/delete";
      }
    }

    function previewImage(event) {
      const reader = new FileReader();
      reader.onload = function () {
        const profilePreview = document.getElementById('profile-preview');
        profilePreview.src = reader.result;
      };
      reader.readAsDataURL(event.target.files[0]);
    }
  </script>
</body>
</html>
