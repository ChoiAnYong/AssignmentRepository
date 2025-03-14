# BaseballGame

> Swift로 만든 숫자 야구 게임

## 📋 프로젝트 개요

ch2. 프로그래밍 기초 주차 과제


## 👥 팀 구성

| 이름      | 역할       | GitHub                           |
| -------- | -------- | --------------------------------- |
| 최안용   | iOS 개발자 | [@ChoiAnYong](https://github.com/ChoiAnYong) |

---

## ⏰ 프로젝트 일정

- **시작일**: 25/03/10  
- **종료일**: 25/03/11


## 📱 주요 기능

### 1. Lv1
- [x] 1에서 9까지의 서로 다른 임의의 수 3개를 정하고 맞추는 게임입니다
- [x] 정답은 랜덤으로 만듭니다.(1에서 9까지의 서로 다른 임의의 수 3자리)
   
### 2. Lv2
- [x] 정답을 맞추기 위해 3자리수를 입력하고 힌트를 받습니다(같은 자리에 같은 숫자가 있는 경우 스트라이크, 다른 자리에 숫자가 있는 경우 볼) 
- [x] 자리 숫자가 정답과 같은 경우 게임이 종료됩니다

### 3. Lv3
- [x] 정답이 되는 숫자를 0에서 9까지의 서로 다른 3자리의 숫자로 바꿔주세요

### 4. Lv4
- [x] 프로그램을 시작할 때 안내문구를 보여주세요
- [x] 1번 입력시 게임 시작

### 5. Lv5
- [x] 2번 완료한 게임들에 대해 시도 횟수 출력

### 6. Lv6
- [x] 3번 종료하기의 경우 프로그램이 종료됩니다
- [x] 1, 2, 3 이외의 입력값에 대해서는 오류 메시지를 보여주세요

## 📱 트러블 슈팅
- 랜덤 넘버 생성시 처음에는 0이 나오면 안되고 2번째부터는 0이 나오는 것이 가능하다.
- 모든 숫자는 중복이 되면 안된다.

배열을 사용하여 .randomElement를 통해 랜덤으로 배열의 원소를 가져옵니다.
처음 배열에는 1~9까지의 수를 넣어 0이 나올 수 없도록 하였으며 .randomElement를 통해 가져온 값은
numberArray에서 삭제하여 중복 숫자가 나오지 못하도록 하였습니다.
i == 0인 경우 첫번째 자리를 뽑은 후 이므로 numberArray에 0을 삽입하여 0이 나올 수 있도록 설정하였습니다.
```swift
private func makeRandomNumber() {
    if !randomNumber.isEmpty { randomNumber.removeAll() }
    
    var numberArray = Array(1...9)
    
    for i in 0..<3 {
        guard let number = numberArray.randomElement(),
              let index = numberArray.firstIndex(of: number) else { return }
        randomNumber.append(number)
        numberArray.remove(at: index)
        if i == 0 {
            numberArray.insert(0, at: 0)
        }
    }
}
```

## 📱 코드 리뷰
질문 1. 
makeRandomNumber()에서 numberArray를 만들고 해당 배열에서 값을 가져온 후 삭제하고 
새로운 배열에 그 값을 추가하는 로직이 시간 복잡도를 생각했을 때 좋지 않은 것 같다.

답변: 사실 좋은 로직이라고 생각하지 않았지만 단순히 10가지의 숫자를 가지고 하는 것이다 보니
문제 없을 것이라고 생각하였습니다.
