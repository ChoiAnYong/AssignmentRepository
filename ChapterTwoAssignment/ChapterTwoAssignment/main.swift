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
