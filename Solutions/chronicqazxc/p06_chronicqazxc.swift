//
//  06_chronicqazxc.swift
//  chronicqazxc
//
//  Created by Wayne Hsiao on 2018/8/4.
//

import NinetyNineSwiftProblems

extension List where T:Equatable {

    func isPalindrome() -> Bool {
        
        if length == 1 {
            return true
        } else {
            var pivot = 0
            if length % 2 == 0 {
                pivot = length / 2 + 1
            } else {
                pivot = length / 2
            }
            
            for index in 0...pivot {
                if self[index] != self[length-1-index] {
                    return false
                }
            }
            
            return true
        }
    }
}
