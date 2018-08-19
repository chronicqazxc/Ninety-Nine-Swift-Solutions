//
//  p10_chronicqazxc.swift
//  chronicqazxc
//
//  Created by Wayne Hsiao on 2018/8/19.
//

import NinetyNineSwiftProblems

extension List where T: Equatable {
    func encode() -> List<(Int, T)> {

        var current = pack()
        var result = [(current.value.length, current.value.last)]

        while let nextItem = current.nextItem {
            result.append((nextItem.value.length, nextItem.value.last))
            current = nextItem
        }
        return List<(Int, T)>(result)
    }
}
