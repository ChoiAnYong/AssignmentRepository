//
//  Menu.swift
//  BaseballGame
//
//  Created by 최안용 on 3/11/25.
//

import Foundation

enum Menu: CaseIterable {
    case start
    case record
    case exit
    
    var description: String {
        switch self {
        case .start:
            return "1. 게임 시작하기"
        case .record:
            return "2. 게임 기록 보기"
        case .exit:
            return "3. 종료하기"
        }
    }
}
