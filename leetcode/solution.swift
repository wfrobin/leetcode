//
//  solution.swift
//  leetcode
//
//  Created by Wang Fan on 2019/8/18.
//  Copyright © 2019 Wang Fan. All rights reserved.
//

import Foundation

class Solution {
    var v:Int?
    
    init(){
        self.v = 1
    }
    
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


func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    
    var step: Int = 0
    var rc:ListNode? = nil
    var rchead:ListNode? = nil
    var c1 = l1
    var c2 = l2
    var n1,n2, sum, r: Int
    while (c1 != nil || c2 != nil ) {
        n1 = c1 != nil ? c1!.val:0
        n2 = c2 != nil ? c2!.val:0
        sum = n1 + n2 + step
        step = sum >= 10 ? 1:0
        r = sum >= 10 ? sum - 10: sum
        if rc == nil{
            rc = ListNode(r)
            rchead = rc
        }
        else
        {
            rc?.next = ListNode(r)
            rc = rc?.next
        }
       
        c1 = c1 != nil ? c1?.next: nil
        c2 = c2 != nil ? c2?.next: nil
    }
    
    if step == 1 {
        rc?.next = ListNode(1)
    }
    
    return rchead
}

func lengthOfLongestSubstring(_ s: String) -> Int {
    
    var cq = [Character]()
    var max_count = 0
    for c in s{
        if cq.contains(c){
            var index = cq.firstIndex(of: c)
            if cq.count > max_count{
                max_count = cq.count
            }
            cq = cq.suffix(cq.count - index! - 1)
        }
        cq.append(c)
    }
    
    return max_count < cq.count ? cq.count: max_count
}


func isPalindrome(q: [(Int, Character)])->Bool{
    let len = q.count
    let count:Int = len / 2
    for var i in (0..<count) {
        var first_c = q[i].1
        var second_c = q[len-i-1].1
        if ( first_c != second_c){
            return false
        }
    }
    return true
}

func longestPalindrome(_ s: String) -> String {
    var cq:[Character]
    var tempq:[(Int,Character)]=[]
    var max_count = 0
    for (index, c) in s.enumerated()
    {
        tempq.append((index, c))
        if isPalindrome(q: tempq) == true{
            max_count = max_count < tempq.count ? tempq.count : max_count
        }
        else{
            
        }
    }
    return ""
}
