//
//  p11_chronicqazxc.swift
//  chronicqazxc
//
//  Created by Wayne Hsiao on 2019/1/1.
//

import NinetyNineSwiftProblems

extension List where T: Equatable {
    func encodeModified() -> List<Any> {
        
        var current = pack()
        var result: [Any] = []

        if current.value.length == 1 {
            result.append(current.value.last)
        } else {
            result.append(List<Any>(current.value.length, current.value.last))
        }

        while let nextItem = current.nextItem {
            if nextItem.value.length == 1 {
                result.append(nextItem.value.last)
            } else {
                result.append(List<Any>(nextItem.value.length, nextItem.value.last))
            }
            current = nextItem
        }

        return List<Any>(result)
    }
}
