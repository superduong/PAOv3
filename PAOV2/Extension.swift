//
//  Extension.swift
//  QuizGameV1
//
//  Created by Duong Do Van on 3/22/19.
//  Copyright © 2019 Duong Do Van. All rights reserved.
//

import Foundation

extension Array {
    /// Picks `n` random elements (partial Fisher-Yates shuffle approach)
    subscript (randomPick n: Int) -> [Element] {
        var copy = self
        for i in stride(from: count - 1, to: count - n - 1, by: -1) {
            copy.swapAt(i, Int(arc4random_uniform(UInt32(i + 1))))
        }
        return Array(copy.suffix(n))
    }
    
    func randomElements(number: Int) -> [Element] {
        guard number > 0 else { return [Element]() }
        var remaining = self
        var chosen = [Element]()
        for _ in 0 ..< number {
            guard !remaining.isEmpty else { break }
            let randomIndex = Int(arc4random_uniform(UInt32(remaining.count)))
            chosen.append(remaining[randomIndex])
            remaining.remove(at: randomIndex)
        }
        return chosen
    }
    
   
    
}

extension Array where Element: Hashable {
    func pickUniqueInValue(_ n: Int) -> [Element] {
        let set: Set<Element> = Set(self)
        guard set.count >= n else {
            fatalError("The array has to have at least \(n) unique values")
        }
        guard n >= 0 else {
            fatalError("The number of elements to be picked must be positive")
        }
        
        return Array(set.prefix(upTo: set.index(set.startIndex, offsetBy: n)))
    }
    
}
