# Yogafire(팀명: 요가파이어)
![요가파이어 최종 발표-001](https://github.com/user-attachments/assets/1af015cd-73e9-4373-8bfe-d767c9eddc3f)


## 👀 서비스 소개
* 웰니스 시장 규모 증가, MZ 세대를 중심으로 홈트 선택율 증가, 요가원 등의 '먹튀' 위험 등을 바탕으로
  집에서 게임성 있게 꾸준히 운동을 할 수 있게하는 요가 운동 서비스를 개발
<br>

## 📅 프로젝트 기간
24.11.05 ~ 24.12.16
<br>

## ⭐ 주요 기능
#### 데이터 수집  
-  AI-HUB(요가 동작 데이터) 데이터 수집
-  Tummee 사이트에서 요가 자세별 이미지 및 설명 데이터 수집
-  YouTube 사이트에서 요가 자세별 영상 데이터 수집

#### 데이터 처리
-  Mediapipe를 통해 추출된 csv에서 모델을 통한 고급 시연자의 절점 데이터와의 비교를 위한 컬럼 삭제 및 컬럼 생성
-  ai hub의 요가 동작에 대한 절점 데이터에 대해 잘못 예측된 절점을 저작도구를 통해 수정

#### 머신러닝/딥러닝
- BPE model 알고리즘을 통해 생성된 동작유사도측정 모델에 대해 추가 학습 진행

#### 웹 페이지 개발 
- 회원 정보 관리
- 요가 동작 정확도 평가
구축된 AI 모델을 통해 mediapipe로 추출한 사용자의 절점과 비교 데이터의 절점 비교 -> 점수 매기기
자세 일치 및 유지에 대한 화면 효과 부여
- 요가 후 명상 코스 제공
심신 안정 음악 제공
- 운동 기록 관리 서비스 제공
캘린더를 통한 운동기록 확인
요가시간 등 자신의 운동 이행 상황을 그래프화
- 요가 시퀀스 생성 및 제공
챗봇을 통해 유저의 요구사항을 분석해 개인 맞춤형 요가 프로그램 생성 및 제공

#### 서버 구축
- Eclipse 내 Tomcat 웹 서버 연결
- Python 플라스크 서버 구축
<br>

## ⛏ 기술스택
<table>
    <tr>
        <th>구분</th>
        <th>내용</th>
    </tr>
    <tr>
        <td>사용언어</td>
        <td>
            <img src="https://img.shields.io/badge/Java-007396?style=for-the-badge&logo=Java&logoColor=white"/>
            <img src="https://img.shields.io/badge/python-646464?style=for-the-badge&logo=python&logoColor=white"/>
            <img src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=HTML5&logoColor=white"/>
            <img src="https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=CSS3&logoColor=white"/>
            <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>라이브러리</td>
        <td>
            <img src="https://img.shields.io/badge/chart.js-7952B3?style=for-the-badge&logo=chart.js&logoColor=white"/>
            <img src="https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jQuery&logoColor=white"/>
            <img src="https://img.shields.io/badge/mediapipe-2f2f2f?style=for-the-badge&logo=mediapipe&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>개발도구</td>
        <td>
            <img src="https://img.shields.io/badge/Eclipse-2C2255?style=for-the-badge&logo=Eclipse&logoColor=white"/>
            <img src="https://img.shields.io/badge/jupyter-F37726?style=for-the-badge&logo=jupyter&logoColor=white"/>
            <img src="https://img.shields.io/badge/VSCode-007ACC?style=for-the-badge&logo=VisualStudioCode&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>서버환경</td>
        <td>
            <img src="https://img.shields.io/badge/Apache Tomcat-D22128?style=for-the-badge&logo=Apache Tomcat&logoColor=white"/>
            <img src="https://img.shields.io/badge/Flask-000000?style=for-the-badge&logo=Flask&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>데이터베이스</td>
        <td>
            <img src="https://img.shields.io/badge/mySQL-00758F?style=for-the-badge&logo=mySQL&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>협업도구</td>
        <td>
            <img src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=Git&logoColor=white"/>
            <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=GitHub&logoColor=white"/>
        </td>
    </tr>
</table>


<br>

## 📌 서비스 흐름도
![image](https://github.com/user-attachments/assets/f83d1f68-c997-4a72-86a4-ca383f6eeef8)
![image](https://github.com/user-attachments/assets/45ef704b-9261-4d31-a3c8-bf426369e53b)

<br>

## 📌 ER다이어그램
![image](https://github.com/user-attachments/assets/a84018d9-483e-485e-b73f-781b1b3168fe)


<br>

## 🖥 화면 구성

### 메인페이지
![image](https://github.com/user-attachments/assets/03c5d230-aed1-4424-a711-ea755cd239ca)

<br>

### 요가 추천 챗봇
![image](https://github.com/user-attachments/assets/7c4420c4-2eae-4e23-9fc1-80342c94907e)


<br>

### 요가 실행 페이지
![image](https://github.com/user-attachments/assets/2cd58353-93bd-41df-8ef4-87eb4fdbef27)



<br>

## 👨‍👩‍👦‍👦 팀원 역할
<table>
  <tr>
    <td align="center"><strong>천지희</strong></td>
    <td align="center"><strong>서은찬</strong></td>
    <td align="center"><strong>안해민</strong></td>
    <td align="center"><strong>김선우</strong></td>
    <td align="center"><strong>장태주</strong></td>
  </tr>
  <tr>
    <td align="center"><b>PM, Deep Learning</b></td>
    <td align="center"><b>Frontend, Backend</b></td>
    <td align="center"><b>Backend, Deep Learning</b></td>
    <td align="center"><b>Frontend</b></td>
    <td align="center"><b>Frontend</b></td>
  </tr>
  <tr>
    <td align="center"><a href="https://github.com/자신의username작성해주세요" target='_blank'>github</a></td>
    <td align="center"><a href="https://github.com/자신의username작성해주세요" target='_blank'>github</a></td>
    <td align="center"><a href="https://github.com/자신의username작성해주세요" target='_blank'>github</a></td>
    <td align="center"><a href="https://github.com/자신의username작성해주세요" target='_blank'>github</a></td>
    <td align="center"><a href="https://github.com/자신의username작성해주세요" target='_blank'>github</a></td>
  </tr>
</table>


## 🤾‍♂️ 트러블슈팅
  
* 문제1<br>
![요가파이어-최종-발표-025](https://github.com/user-attachments/assets/12c842d3-2782-4c32-8b1e-71c334e9de96)


 
* 문제2<br>
![요가파이어-최종-발표-027](https://github.com/user-attachments/assets/a38b3ff2-586d-483e-bedf-611c3aa1a4e0)




## 관련 링크
python 링크 - https://github.com/2024-SMHRD-KDT-BigData-25/yogafire_flask
