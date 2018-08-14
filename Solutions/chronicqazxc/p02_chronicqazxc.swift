//
//  p02_chronicqazxc.swift
//  chronicqazxc
//
//  Created by Wayne Hsiao on 2018/7/29.
//

import NinetyNineSwiftProblems

extension List {
    public var penultimate: T? {
        
        var nextItem = self.nextItem
        var previousItem: List? = (nextItem == nil) ? nil : self
        
        while nextItem != nil {

            if nextItem?.nextItem != nil {
                previousItem = nextItem
            }
            nextItem = nextItem?.nextItem
        }

        return previousItem?.value
    }
}
