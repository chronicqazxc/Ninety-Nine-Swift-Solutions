//
//  p05_chronicqazxc.swift
//  chronicqazxc
//
//  Created by Wayne Hsiao on 2018/8/4.
//

import NinetyNineSwiftProblems

extension List {
    func reverse() -> List {
        var values = Array.init(repeating: value, count: length)
        var currentItem = self
        values[currentItem.length-1] = currentItem.value
        
        while let nextItem = currentItem.nextItem {
            currentItem = nextItem
            values[currentItem.length-1] = currentItem.value
        }
        
        return List(values)
    }
}
