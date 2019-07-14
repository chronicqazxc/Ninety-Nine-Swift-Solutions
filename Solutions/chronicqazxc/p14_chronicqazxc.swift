//
//  p14_chronicqazxc.swift
//  chronicqazxc
//
//  Created by Wayne Hsiao on 2019/7/14.
//

import NinetyNineSwiftProblems

extension List {
    func duplicate() -> List<Any> {
        
        var result: [Any] = [value, value]
        var currentItem = self
        
        while let nextItem = currentItem.nextItem {
            result.append(contentsOf: [nextItem.value, nextItem.value])
            currentItem = nextItem
        }
        return List<Any>(result)
    }
}
