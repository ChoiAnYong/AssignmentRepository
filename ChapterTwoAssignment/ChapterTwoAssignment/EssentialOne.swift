//
//  EssentialOne.swift
//  ChapterTwoAssignment
//
//  Created by 최안용 on 3/20/25.
//

import Foundation

final class EssentialOne {
    let sum: (Int, Int) -> String =  {
        "두 수의 합은 \($0+$1)입니다"
    }

    func calculate(_ x: Int, _ y: Int, _ sum: (Int, Int) -> String) {
        print(sum(x, y))
    }
}

// 사용
// let test = EssentialOne()
// test.calculate(1, 1, test.sum)
