//
//  p04_chronicqazxc.swift
//  chronicqazxc
//
//  Created by Wayne Hsiao on 2018/8/3.
//

import NinetyNineSwiftProblems

extension List {
    var length: Int {
        var length = 1;
        var currentItem = self
        while let nextItem = currentItem.nextItem {
            length += 1
            currentItem = nextItem
        }
        return length
    }
}
