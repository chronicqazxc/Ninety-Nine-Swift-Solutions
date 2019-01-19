//
//  p12_chronicqazxc.swift
//  chronicqazxc
//
//  Created by Wayne Hsiao on 2019/1/10.
//

import NinetyNineSwiftProblems

fileprivate extension String {
    mutating func appendWithComma(string: String) {
        return append("\(string), ")
    }
}

extension List {
    
    func decode() -> List<String> {
        /*
         let list = List((4, "a"), (1, "b"), (2, "c"), (2, "a"), (1, "d"), (4, "e"))
         list.decode()
         List("a", "a", "a", "a", "b", "c", "c", "a", "a", "d", "e", "e", "e", "e")
         */
        var currentItem = self
        var content = ""
        
        typealias CountValue = (count: Int, value: String)
        
        func separatedContent(_ item: List,
                              countValue: CountValue) {
            content = separatedContent(item,
                                       previousContent: content,
                                       countValue: countValue)
        }
        
        func separatedContent(_ item: List,
                              previousContent: String,
                              countValue: CountValue) -> String {
            var content = previousContent
            for index in 0 ... countValue.count - 1 {
                if let _ = item.nextItem {
                    content.appendWithComma(string: countValue.value)
                } else {
                    if index == countValue.count - 1 {
                        content.append(countValue.value)
                    } else {
                        content.appendWithComma(string: countValue.value)
                    }
                }
            }
            
            return content
        }
        
        if let tumple = currentItem.value as? CountValue {
            separatedContent(currentItem,
                             countValue: tumple)
        }
        
        while let nextItem = currentItem.nextItem, let tumple = nextItem.value as? CountValue {
            separatedContent(nextItem,
                             countValue: tumple)
            currentItem = nextItem
        }
        
        return List<String>(content)
    }
}
