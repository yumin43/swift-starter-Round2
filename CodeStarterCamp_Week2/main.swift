func extractLottoNumbers() -> Set<Int> {
    var  lottoNumbers : Set<Int> = Set<Int>()
    repeat {
        let randomNumber = Int.random(in: 1...45)
        if !lottoNumbers.contains(randomNumber){
            lottoNumbers.insert(randomNumber)
        }
    } while (lottoNumbers.count < 6)
    return lottoNumbers
}

func compareLottoNumbers(myLottoNumbers : [Int]) {
    let winningNumber : Set<Int> = extractLottoNumbers()
    let overlappingNumber : Set<Int> = Set(myLottoNumbers).intersection(winningNumber)
    
    switch overlappingNumber.count {
    case 3...6:
        print("축하합니다! 겹치는 번호는 \(overlappingNumber.sorted()) 입니다!")
    default:
        print("아쉽게도 당첨에 되지 못했습니다. 당첨된 번호는 \(winningNumber.sorted()) 입니다.")
    }
}

let myLottoNumbers: [Int] = [15, 16, 17, 18, 19, 20]
compareLottoNumbers(myLottoNumbers : myLottoNumbers)

/*
 ### Round2 [Step2] : 내 번호와 맞추어보기!
 
 ## 고민했던 점
 
 - 생각보다 많은 변수를 만들어야 해서 변수명을 생각하느라 시간이 오래걸렸다.
 - 객관성은 있게 이름을 지어야 하다보니 코드가 뭔가 복잡해 보였다.
 - 실제 로또 당첨됬을시 등수 확인 기능을 구현하기 위해 case 별로 intersection의 count를 세어 등수확인을 하려했으나
 - 생각해보니 2등 당첨은 좀 특별하다는 것을 깨달았다.
 - 욕심이 났지만 우선 내가 할 수 있는 영역에만 집중하기로 했다.
 
 ## 해결되지 않은 점
 
 - 아직도 Swift의 타입 명시가 익숙하지가 않다.
 - Set 컬렉션을 지정할 때에도 항상 Set<Int>를 지정해 줘야한다는 것과 함수선언 할때 반환값의 타입을 명시해 줘야하는 다는 것을 헷갈린다 아직도
 
 ## 조언을 얻고 싶은 점
 
 - switch 문법을 쓸때, /t(tap)기능이 개행처리가 자꾸 불편한데 이거 원래 이런것일까요? 아니면 제가 아직 익숙치 않은 걸까요???
 
 
 @mint3382
 
*/
