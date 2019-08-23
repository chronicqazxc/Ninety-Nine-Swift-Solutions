//
//  p15_chronicqazxc.swift
//  chronicqazxc
//
//  Created by Wayne Hsiao on 2019/8/24.
//

import NinetyNineSwiftProblems

extension List {
    func duplicate(times: Int) -> List {
        var result = [T]()
        var currentItem = self
        result.append(contentsOf: duplicateItmes(times: times,
                                                 value: currentItem.value))
        
        while let next = currentItem.nextItem {
            result.append(contentsOf: duplicateItmes(times: times,
                                                     value: next.value))
            currentItem = next
        }

        return List(result)
    }
    
    func duplicateItmes(times: Int, value: T) -> [T] {
        return Array(repeating: value, count: times)
    }
}
