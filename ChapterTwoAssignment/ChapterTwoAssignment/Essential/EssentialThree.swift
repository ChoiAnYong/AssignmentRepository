//
//  EssentialThree.swift
//  ChapterTwoAssignment
//
//  Created by 최안용 on 3/20/25.
//

import Foundation

final class EssentialThree {
    func a(_ arr: [Int]) -> [Int] {
        return arr.indices.filter { $0 % 2 == 0 }.map { arr[$0] }
    }
    
    func b(_ arr: [String]) -> [String] {
        return arr.indices.filter { $0 % 2 == 0 }.map { arr[$0] }
    }
    
    func c<T>(_ arr: [T]) -> [T] {
        return arr.indices.filter { $0 % 2 == 0 }.map { arr[$0] }
    }
    
    func d<T: Numeric>(_ arr: [T]) -> [T] {
        return arr.indices.filter { $0 % 2 == 0 }.map { arr[$0] }
    }
}

// 사용
// let three = EssentialThree()
// print(three.a([1,2,3,4,5]))
// print(three.b(["가", "나", "다", "라", "마"]))
//
// print(three.c([6,7,8,9,10]))
// print(three.c(["바", "사", "아", "자", "차"]))
//
// print(three.d([2,4,6,8,10,12,14]))

// 출력
// [1, 3, 5]
// ["가", "다", "마"]
// [6, 8, 10]
// ["바", "아", "차"]
// [2, 6, 10, 14]
