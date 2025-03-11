//
//  BaseballGame.swift
//  BaseballGame
//
//  Created by 최안용 on 3/10/25.
//

import Foundation

final class BaseballGame {
    var randomNumber: [Int] = []
    var tryCounts: [Int] = []
    
    func run() {
        while true {
            print("환영합니다! 원하시는 번호를 입력해주세요")
            print(Menu.allCases.map { $0.description }.joined(separator: " "))
            
            guard let menuInput = readLine() else { return }
            do {
                let menu = try checkMenuInput(menuInput)
                
                switch menu {
                case .start:
                    startGame()
                case .record:
                    recordPrint()
                case .exit:
                    print("\n< 숫자 야구 게임을 종료합니다 >")
                    return
                }
            } catch {
                print("\n올바른 숫자를 입력해주세요!\n")
            }
        }
    }
}

extension BaseballGame {
    private func startGame() {
        var count = 0
        
        makeRandomNumber()
        
        print("\n< 게임을 시작합니다 >")
        
        while true {
            print("숫자를 입력하세요")
            
            guard let input = readLine() else { return }
            
            count += 1
            
            do {
                let result = try checkInput(input)
                print("\(result.description)\n")
                if result == .correct {
                    tryCounts.append(count)
                    break
                }
            } catch {
                print("올바르지 않은 입력값입니다\n")
            }
        }
    }
    
    private func recordPrint() {
        print("\n< 게임 기록 보기 >")
        if tryCounts.isEmpty {
            print("게임 기록이 없습니다.\n")
        } else {
            for i in 0..<tryCounts.count {
                print("\(i+1)번째 게임 : 시도 횟수 - \(tryCounts[i])")
            }
            print("\n")
        }
    }
}

extension BaseballGame {
    // MARK: - 중복 없는 랜덤 숫자 생성
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
    
    // MARK: - Input 검증(유효하지 않은 입력인 경우 error throws)
    private func checkInput(_ input: String) throws -> Output {
        var strike = 0
        var ball = 0
        var index = 0
        
        // 숫자 외의 값과 0 필터링
        var inputNumbers = try input.map {
            guard let num = Int(String($0)) else {
                throw NSError(domain: "InputError", code: 1)
            }
            return num
        }
        
        // 중복된 숫자 필터링
        let setInputNumbers = Set(inputNumbers)
        
        
        // 입력 숫자 검증
        if inputNumbers.count != 3 || setInputNumbers.count != 3 {
            throw NSError(domain: "InputError", code: 1)
        }
        
        randomNumber.forEach { num in
            if num == inputNumbers[index] {
                strike += 1
                inputNumbers.remove(at: index)
            } else {
                index += 1
            }
        }
        
        if strike == 3 {
            return .correct
        }
        
        inputNumbers.forEach { num in
            if randomNumber.contains(num) {
                ball += 1
            }
        }
        
        if strike == 0 && ball == 0 {
            return .nothing
        } else {
            return .hit(strike, ball)
        }
    }
    
    private func checkMenuInput(_ input: String) throws -> Menu {
        guard let input = Int(input),
              input - 1 < Menu.allCases.count,
              input > 0 else {
            throw NSError(domain: "InputError", code: 2)
        }
        
        return Menu.allCases[input-1]
    }
}
