//
//  solution.swift
//  leetcode
//
//  Created by Wang Fan on 2019/8/18.
//  Copyright © 2019 Wang Fan. All rights reserved.
//

import Foundation

public class Solution {
    public func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result = [Int]()
        var container = Set<Int>()
        for (index, value) in nums.enumerated() {
            let match = target - value
            if container.contains(match) {
                let first  = nums.firstIndex(of: match)!
                result.append(first)
                result.append(index)
                break
            }
            container.insert(value)
        }
        return result
    }
}

public class VideoMode {
    var resolution = 1
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

