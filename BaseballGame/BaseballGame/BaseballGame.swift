//
//  BaseballGame.swift
//  BaseballGame
//
//  Created by 최안용 on 3/10/25.
//

import Foundation

final class BaseballGame {
    var randomNumber: [Int] = []
    var input: [Int] = []
    
    init() {
        makeRandomNumber()
    }
    
    func start() {
        print(randomNumber)
    }
}

extension BaseballGame {
    private func makeRandomNumber() {
        for _ in 0..<3 {
            let number = Int.random(in: 0..<10)
            randomNumber.append(number)
        }
    }
}
