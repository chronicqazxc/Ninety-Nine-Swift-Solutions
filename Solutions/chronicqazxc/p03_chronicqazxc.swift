//
//  p03_chronicqazxc.swift
//  chronicqazxc
//
//  Created by Wayne Hsiao on 2018/8/1.
//

import Foundation
import NinetyNineSwiftProblems

extension List {
    subscript(index: Int) -> T? {
        var currentItem = self
        var currentIndex: Int = 0
        
        while let nextItem = currentItem.nextItem, currentIndex != index {
            currentIndex = currentIndex + 1
            currentItem = nextItem
            if currentIndex == index {
                return currentItem.value
            }
        }
        
        if currentIndex == index {
            return currentItem.value
        } else {
            return nil
        }

    }
}
