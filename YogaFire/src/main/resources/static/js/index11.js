const detailsData = {
    beginner1: {
        title: "",
        description: "",
 }
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
		
		const itemTitle = item.querySelector("p").innerText;
		const itemExp = item.querySelector(".exp").innerText;
		const itemImg = item.querySelector(".flowimg img").src;
		
        const detailsDiv = document.createElement("div");
        detailsDiv.className = "details";
        detailsDiv.innerHTML = `
		<div class="itemdetails">
			<div>
            	<h3>${itemTitle}</h3>
            	<p>${itemExp}</p>
			</div>
			<img src="${itemImg}">
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

    const item = button.closest(".item");
    const flowId = item.dataset.flowId;
    const userId = item.dataset.userId;

    // Flask 서버 경로로 이동
    window.location.href = `http://localhost:8097/boot/programs/${userId}/${flowId}`;
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


