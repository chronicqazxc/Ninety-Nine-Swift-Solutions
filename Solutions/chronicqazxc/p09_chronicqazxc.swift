//
//  p09_chronicqazxc.swift
//  chronicqazxc
//
//  Created by Wayne Hsiao on 2018/8/14.
//

import NinetyNineSwiftProblems

extension List where T: Equatable {
    func pack() -> List<List<T>> {
        
        var total = [[T]]()
        var currentItem = self
        var currentValues: [T] = [currentItem.value]
        
        while let nextItem = currentItem.nextItem {
            if currentValues.first == nextItem.value {
                currentValues.append(nextItem.value)
            } else {
                total.append(currentValues)
                currentValues = [nextItem.value]
            }
            
            currentItem = nextItem
        }
        
        total.append(currentValues)
        let values = total.map {
            return List($0)
        }
        
        let result = List<List<T>>(values)
        
        return result
    }
}
