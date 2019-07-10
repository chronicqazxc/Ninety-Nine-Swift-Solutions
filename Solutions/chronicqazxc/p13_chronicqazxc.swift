//
//  p13_chronicqazxc.swift
//  chronicqazxc
//
//  Created by Wayne Hsiao on 2019/7/10.
//

import NinetyNineSwiftProblems

extension List where T: Equatable {
    func encodeDirect() -> List<(Int, T)> {
        var currentCount = 1
        var currentItem = self
        var results: [(Int, T)] = [(currentCount, value)]
        
        while let nextItem = currentItem.nextItem {
            if nextItem.value == currentItem.value {
                currentCount += 1
                results[results.count-1] = (currentCount, nextItem.value)
            } else {
                currentCount = 1
                results.append((currentCount, nextItem.value))
            }
            currentItem = nextItem
        }
        return List<(Int, T)>(results)
    }
}
