const detailsData = {
    beginner1: {
        title: "엉덩이를 위한 요가 시퀀스",
        description: "엉덩이를 위한 요가 시퀀스는 엉덩이 오프너 범주에 속하며, 학생의 연습 수준에 관계없이 모든 요가 연습의 필수적인 부분을 형성합니다. 엉덩이 오프너 요가 시퀀스는 엉덩이와 허벅지 위쪽에 연결된 근육을 열어 허리 아랫부분에 힘을 제공하기 위해 연습해야 할 기본 시퀀스와 같습니다. 엉덩이의 많은 근육은 엉덩이 관절과 대퇴골에 움직임의 자유, 힘과 안정성을 제공합니다. 따라서 엉덩이 주변 근육을 여는 작업은 대부분의 요가 포즈에 필수적입니다.",
    },
    beginner2: {
        title: "Beginner Pose 2",
        description: "This is another beginner-level yoga pose to enhance flexibility.",
    },
    intermediate1: {
        title: "Intermediate Pose 1",
        description: "This is an intermediate-level yoga pose to enhance strength and stability.",
    },
    intermediate2: {
        title: "Intermediate Pose 2",
        description: "This is another intermediate pose to develop core strength.",
    },
    advanced1: {
        title: "Advanced Pose 1",
        description: "This advanced-level pose challenges balance and concentration.",
    },
    advanced2: {
        title: "Advanced Pose 2",
        description: "An advanced pose for mastering strength and flexibility.",
    },
};

let currentlyOpenDetails = null; // 현재 열려있는 상세 정보를 추적

function toggleDetails(event) {
    const button = event.currentTarget;
    const item = button.closest(".item"); // 버튼이 속한 .item 요소
    const category = item.closest(".category"); // .category 요소 가져오기
    const id = item.dataset.id;

    // 기존에 열려 있는 상세 정보가 있으면 닫기
    if (currentlyOpenDetails && currentlyOpenDetails !== item) {
        const openDetails = category.querySelector(".details");
        if (openDetails) {
            openDetails.classList.remove("visible");
            setTimeout(() => openDetails.remove(), 500); // 애니메이션 후 제거
        }
        currentlyOpenDetails.classList.remove("highlight"); // 기존 아이템의 강조 상태 해제
    }

    // 상세 정보가 이미 열려 있는지 확인하고, 열기 또는 닫기
    const existingDetails = category.querySelector(".details");
    if (existingDetails && currentlyOpenDetails === item) {
        existingDetails.classList.remove("visible");
        setTimeout(() => existingDetails.remove(), 500);
        item.classList.remove("highlight"); // 강조 상태 해제
        currentlyOpenDetails = null; // 열려 있는 상세 정보 없앰
        return;
    }

    // 새로운 상세 정보 생성
    const data = detailsData[id];
    if (data) {
		const itemTitle = item.querySelector("p").innerText; // 또는 textContent
		const itemExp = item.querySelector(".exp").innerText;
		const itemimg = item.querySelector(".flowimg img").src;
        const detailsDiv = document.createElement("div");
        detailsDiv.className = "details";
        detailsDiv.innerHTML = `
		<div class="itemdetails">
			<div>
            	<h3>${itemTitle}</h3>
            	<p>${itemExp}</p>
			</div>
			<img src="${itemimg}">
		</div>
        `;

        // .category 요소 아래에 상세 정보 삽입
        category.appendChild(detailsDiv);

        // 약간의 딜레이 후 애니메이션 효과 활성화
        setTimeout(() => {
            detailsDiv.classList.add("visible");
        }, 10);

        // 해당 아이템에 강조 상태 추가
        item.classList.add("highlight");

        // 현재 열려 있는 상세 정보 추적
        currentlyOpenDetails = item;
    }
}

function startYoga(event) {
    const button = event.currentTarget;
    const item = button.closest(".item"); // 버튼이 속한 .item 요소
    const id = item.dataset.id;

    window.location.href = `yogaPlay`;
    // 여기서 추가적인 로직(예: 페이지 이동, 동영상 재생)을 구현할 수 있습니다.
}

// 각 아이템에 버튼 생성 및 이벤트 추가
document.querySelectorAll(".item").forEach(item => {
    // 상세 보기 버튼 추가
    const detailsButton = document.createElement("button");
    detailsButton.className = "toggle-button";
    detailsButton.textContent = "상세 보기";
    detailsButton.addEventListener("click", toggleDetails);

    // 요가 시작 버튼 추가
    const startButton = document.createElement("button");
    startButton.className = "start-button";
    startButton.textContent = "요가 시작";
    startButton.addEventListener("click", startYoga);

    // 버튼을 아이템에 추가
    const buttonContainer = document.createElement("div");
    buttonContainer.className = "button-container";
    buttonContainer.appendChild(detailsButton);
    buttonContainer.appendChild(startButton);

    item.appendChild(buttonContainer);
});
