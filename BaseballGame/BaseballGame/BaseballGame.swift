//
//  BaseballGame.swift
//  BaseballGame
//
//  Created by 최안용 on 3/10/25.
//

import Foundation

final class BaseballGame {
    var randomNumber: [Int] = []
    
    func start() {
        makeRandomNumber()
        
        print(" < 게임을 시작합니다 >")
        
        while true {
            print("숫자를 입력하세요")
            
            guard let input = readLine() else { return }
            
            do {
                let result = try checkInput(input)
                print("\(result.description)\n")
                if result == .correct {
                    break
                }
            } catch {
                print("올바르지 않은 입력값입니다\n")
            }
        }
    }
}

extension BaseballGame {
    private func makeRandomNumber() {
        var numberArray = Array(1...9)
        
        for _ in 0..<3 {
            guard let number = numberArray.randomElement(),
                  let index = numberArray.firstIndex(of: number) else { return }
            randomNumber.append(number)
            numberArray.remove(at: index)
        }
    }
    
    private func checkInput(_ input: String) throws -> Output {
        var strike = 0
        var ball = 0
        var index = 0
        
        // 숫자 외의 값과 0 필터링
        var inputNumbers = try input.map {
            guard let num = Int(String($0)),
                  num != 0 else {
                throw NSError(domain: "InputError", code: 1)
            }
            return num
        }
        
        // 중복된 숫자 필터링
        let setInputNumbers = Set(inputNumbers)
        
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
}
