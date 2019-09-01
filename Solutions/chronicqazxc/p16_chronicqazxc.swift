//
//  p16_chronicqazxc.swift
//  chronicqazxc
//
//  Created by Wayne Hsiao on 2019/9/1.
//

import NinetyNineSwiftProblems

extension List {
    func drop(every: Int) -> List? {
        guard every > 0 else {
            return nil
        }
        let count = self.length / every
        guard count > 0 else {
            return self
        }
        var result = [T]()
        let dropIndex = Array(1...count).map {
            every * $0 - 1
        }
        for index in 0...self.length-1 {
            guard dropIndex.contains(index) == false,
                let value = self[index] else {
                continue
            }
            result.append(value)
        }
        guard result.count > 0 else {
            return nil
        }
        return List(result)
    }

}
