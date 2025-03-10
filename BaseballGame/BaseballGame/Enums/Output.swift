//
//  Output.swift
//  BaseballGame
//
//  Created by 최안용 on 3/10/25.
//


enum Output: Equatable {
    case nothing
    case correct
    case hit(_ strike: Int, _ ball: Int)
    
    var description: String {
        switch self {
        case .nothing:
            return "Nothing"
        case .correct:
            return "정답입니다!"
        case let .hit(strike, ball):
            return "\(strike)스트라이크 \(ball)볼"
        }
    }
}