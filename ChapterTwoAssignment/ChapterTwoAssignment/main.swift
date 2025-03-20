//
//  main.swift
//  ChapterTwoAssignment
//
//  Created by 최안용 on 3/20/25.
//

import Foundation


let one = EssentialOne()
one.calculate(1, 1, one.sum)

let two = EssentialTwo()

two.chainingPrint()

let result = two.myMap([1, 2, 3, 4, 5]) {
    String($0)
}

print(result)


let three = EssentialThree()
print(three.a([1,2,3,4,5]))
print(three.b(["가", "나", "다", "라", "마"]))

print(three.c([6,7,8,9,10]))
print(three.c(["바", "사", "아", "자", "차"]))

print(three.d([2,4,6,8,10,12,14]))
