Method 파일
5 ~ isEmpty는 배열이 비어있는지 확인하며 비어있다면 True를 반환하는 함수입니다.
16 ~ 반복문 내에서 var를 선언하지 않고 let을 선언하여 매번 새로 값을 초기화하는 것이 가능합니다.
18 ~ contains(x)는 배열 내에 x인자가 있는지 확인하며 있다면 True를 반환합니다.
29 ~ x.filter{$0}는 {}내의 조건을 만족한다면 조건을 만족한 배열(x)의 값'들'을 return 해줍니다. 
35 ~ x.map{}은 x배열을 {}내의 명령문을 실행한 x배열 값들을 return 해줍니다.
37 ~ x.joined(separater: y)은 배열 x의 값들 사이에 y값을 넣어줍니다.
