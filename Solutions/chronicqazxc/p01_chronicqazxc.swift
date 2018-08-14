//
//  p01_chronicqazxc.swift
//  chronicqazxc
//
//  Created by Wayne Hsiao on 2018/7/29.
//

import NinetyNineSwiftProblems

extension List {
    public var last: T {
        return nextItem?.last ?? value
    }
}
