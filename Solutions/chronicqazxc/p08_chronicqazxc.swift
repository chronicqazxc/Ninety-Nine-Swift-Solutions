//
//  p08_chronicqazxc.swift
//  chronicqazxc
//
//  Created by Wayne Hsiao on 2018/8/12.
//

import NinetyNineSwiftProblems

extension List where T: Equatable {
    
    func compress() -> List {
        var result = [T]()
        var currentItem = self
        result.append(currentItem.value)
        while let nextItem = currentItem.nextItem {
            if currentItem.value == nextItem.value {
                currentItem = nextItem
            } else {
                currentItem = nextItem
                result.append(currentItem.value)
            }
        }
        return List(result)
    }
}

