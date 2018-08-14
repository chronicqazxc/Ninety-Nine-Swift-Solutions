//
//  p07_chronicqazxc.swift
//  chronicqazxc
//
//  Created by Wayne Hsiao on 2018/8/7.
//

import NinetyNineSwiftProblems

extension List {

    func flatten() -> List {
        
        var flatMap = [T]()
        
        func recursive(list:List) {

            for index in 0...list.length-1 {

                guard let item = list[index] else {
                    return
                }

                if let nextList = item as? List {
                    recursive(list: nextList)
                } else {
                    flatMap.append(item)
                }
            }
        }
        
        recursive(list: self)
        
        return List(flatMap)
    }
}
