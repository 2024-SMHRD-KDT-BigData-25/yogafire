<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>요가 및 명상 회원권</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        :root {
            --main-bg: #f9fcf4;
            --highlight-bg: #dff5e3;
            --card-bg: white;
            --main-text: #2f493b;
            --secondary-text: #3c5a48;
            --accent-color: #6fcb9f;
            --button-bg: #4d755c;
            --button-hover-bg: #3b5844;
            --button-text: white;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: var(--main-bg);
            color: var(--main-text);
            margin: 0;
            padding: 0;
        }

        .top-menu {
            background-color: var(--highlight-bg);
            padding: 20px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
        }

        .menu-items a {
            color: var(--main-text);
            font-weight: bold;
            font-size: 1.1rem;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }

        .menu-items a:hover {
            background-color: var(--accent-color);
            color: var(--button-text);
        }

        .page-title {
            text-align: center;
            margin: 40px 0 20px;
            font-size: 2.4rem;
            font-weight: bold;
            color: var(--main-text);
        }

        .membership-content {
            background-color: var(--card-bg);
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .membership-content:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
        }

        .accordion-button {
            background-color: var(--highlight-bg);
            color: var(--main-text);
            border: none;
            border-radius: 5px;
            transition: background-color 0.3s ease, color 0.3s;
            font-size: 1rem;
            font-weight: bold;
        }

        .accordion-button:not(.collapsed) {
            background-color: var(--accent-color);
            color: var(--button-text);
        }

        .accordion-body {
            background-color: var(--main-bg);
            color: var(--secondary-text);
            border-left: 3px solid var(--accent-color);
            padding-left: 20px;
            font-size: 0.95rem;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .contact-info-section {
            background-color: var(--highlight-bg);
            padding: 40px 20px;
            margin-top: 40px;
            border-top: 4px solid var(--accent-color);
            border-radius: 10px;
        }

        .contact-info-section h3 {
            color: var(--main-text);
            font-weight: bold;
            margin-bottom: 20px;
        }

        .contact-info-section p {
            color: var(--secondary-text);
            margin-bottom: 10px;
        }

        .contact-info-section button {
            background-color: var(--button-bg);
            color: var(--button-text);
            border: none;
            padding: 12px 25px;
            border-radius: 20px;
            font-weight: bold;
            margin-top: 20px;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .contact-info-section button:hover {
            background-color: var(--button-hover-bg);
            transform: scale(1.05);
        }

        /* 이모티콘 크기 조정 */
        .emoji {
            font-size: 1.2rem;
        }
    </style>
</head>
<body>
   <div class="top-menu">
    <div class="menu-items">
        <!-- Home 버튼 클릭 시 index4.jsp로 이동 -->
        <a href="/boot/index4">🧘 Home</a>
    </div>
</div>



    <h1 class="page-title">요가 및 명상 회원권 🌿</h1>


    <div class="container">
        <ul class="nav nav-tabs justify-content-center" id="membershipTabs" role="tablist">
            <li class="nav-item" role="presentation">
                <button class="nav-link active" id="yoga-tab" data-bs-toggle="tab" data-bs-target="#onlineYoga" type="button" role="tab" aria-controls="onlineYoga" aria-selected="true">
                    🧘 온라인 요가권
                </button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="meditation-tab" data-bs-toggle="tab" data-bs-target="#onlineMeditation" type="button" role="tab" aria-controls="onlineMeditation" aria-selected="false">
                    🌌 온라인 명상권
                </button>
            </li>
        </ul>

        <div class="tab-content mt-4" id="membershipTabsContent">
            <div class="tab-pane fade show active" id="onlineYoga" role="tabpanel" aria-labelledby="yoga-tab">
                <div class="membership-content">
                    <h2>📜 온라인 요가 회원권</h2>
                    <div class="accordion" id="yogaAccordion">
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingYogaMonthly">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseYogaMonthly" aria-expanded="true" aria-controls="collapseYogaMonthly">
                                    월별 요가 회원권 💪
                                </button>
                            </h2>
                            <div id="collapseYogaMonthly" class="accordion-collapse collapse show" aria-labelledby="headingYogaMonthly" data-bs-parent="#yogaAccordion">
                                <div class="accordion-body">
                                    <span class="emoji">✔️</span>
                                    6개월: 120,000원
                                    <br>
                                    <span class="emoji">✔️</span>
                                    12개월: 200,000원
                                    <br>
                                    <span class="emoji">💻</span> 온라인 수업 참여 가능
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingYogaTrial">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseYogaTrial" aria-expanded="false" aria-controls="collapseYogaTrial">
                                    체험권 🌟
                                </button>
                            </h2>
                            <div id="collapseYogaTrial" class="accordion-collapse collapse" aria-labelledby="headingYogaTrial" data-bs-parent="#yogaAccordion">
                                <div class="accordion-body">
                                    <p>✨ 1회 체험: 10,000원</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="onlineMeditation" role="tabpanel" aria-labelledby="meditation-tab">
                <div class="membership-content">
                    <h2>🌌 온라인 명상 회원권</h2>
                    <div class="accordion" id="meditationAccordion">
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingMeditationMonthly">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseMeditationMonthly" aria-expanded="true" aria-controls="collapseMeditationMonthly">
                                    월별 명상 회원권 🧘‍♂️
                                </button>
                            </h2>
                            <div id="collapseMeditationMonthly" class="accordion-collapse collapse show" aria-labelledby="headingMeditationMonthly" data-bs-parent="#meditationAccordion">
                                <div class="accordion-body">
                                    <span class="emoji">✔️</span>
                                    6개월: 100,000원
                                    <br>
                                    <span class="emoji">✔️</span>
                                    12개월: 180,000원
                                    <br>
                                    <span class="emoji">📹</span> 녹화 영상 제공
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingMeditationTrial">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseMeditationTrial" aria-expanded="false" aria-controls="collapseMeditationTrial">
                                    체험권 🌠
                                </button>
                            </h2>
                            <div id="collapseMeditationTrial" class="accordion-collapse collapse" aria-labelledby="headingMeditationTrial" data-bs-parent="#meditationAccordion">
                                <div class="accordion-body">
                                    <p>✨ 1회 체험: 8,000원</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- 상담 섹션 -->
        <section class="contact-info-section">
            <div class="container">
                <h3>📞 상담 안내</h3>
                <p>상담은 영업시간 중에 전화 또는 채팅으로 가능합니다.</p>
                <table>
                    <tr>
                        <th>전화 상담</th>
                        <td>02-3447-9642</td>
                    </tr>
                    <tr>
                        <th>채팅 상담</th>
                        <td><a href="#" style="color: var(--main-text);">카카오톡 바로가기</a></td>
                    </tr>
                </table>
                <button>상담 예약하기</button>
            </div>
        </section>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
