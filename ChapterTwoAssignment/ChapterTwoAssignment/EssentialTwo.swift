//
//  EssentialTwo.swift
//  ChapterTwoAssignment
//
//  Created by 최안용 on 3/20/25.
//

import Foundation

final class EssentialTwo {
    var numbers: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    func chainingPrint() {
        print(numbers.filter { $0 % 2 == 0 }.map { String($0) })
    }
    
    func myMap(_ arr: [Int], _ closure: (Int) -> String) -> [String] {
        return arr.map { closure($0) }
    }
}

// 사용
// let two = EssentialTwo()
//
// two.chainingPrint()
//
// let result = two.myMap([1, 2, 3, 4, 5]) {
//     String($0)
// }
//
// print(result)

