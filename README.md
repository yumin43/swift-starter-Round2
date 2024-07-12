코드 스타터 캠프 2주차 미션을 위한 저장소입니다.

1. step 1
“Round2 첫번째 스텝 "로또 당첨번호 생성기 순서도 생성하기”\
순서도 및 설명입니다.

## 순서도
<img width="533" alt="스크린샷 2024-07-13 오전 3 41 59" src="https://github.com/user-attachments/assets/62a5a5c6-4b7c-4ad8-b32f-d11e0a9f486f">

## 순서도 설명
### lotto: Set<Int> 선언
- 로또 번호의 중복을 방지하기 위해서 Set 타입으로 정의하였습니다.

### while lotto.count < 6
- 6개의 랜덤함 숫자를 추가시키기 위하여 lotto의 갯수를 6개로 제한하는 조건으로 while문을 실행하였습니다.
- while문을 실행할 시 특정 범위 내에 랜덤 숫자를 뽑는 Int.random(범위)를 활용하여 1에서 45까지 랜덤한 숫자 추출 후 lotto에 insert로 추가

### "\(lotto)" 출력
- 반복문을 통해 얻은 랜덤 숫자 6개 출력
