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

func getLP_single(_ s:String, _ start_index:String.Index) -> String {
    
    let len = s.count
    
    var right_pos, left_pos, start_pos: Int

    start_pos = s.distance(from: s.startIndex, to: start_index)
    
    
    right_pos = start_pos
    left_pos =  start_pos
    
    var right_char, left_char: Character
    while true {
        
        if right_pos - 1 < 0 || left_pos + 1 >= len {
            break
        }
        right_char = s[s.index(s.startIndex, offsetBy: right_pos - 1)]
        left_char = s[s.index(s.startIndex, offsetBy: left_pos + 1)]
        
        if right_char == left_char{
            right_pos -= 1
            left_pos += 1
            continue
        }
        else
        {
            break
        }
    }

    
    return String(s[s.index(s.startIndex, offsetBy: right_pos) ... s.index(s.startIndex, offsetBy: left_pos)])
}

func getLP_double(_ s:String, _ start_index:String.Index) -> String {
    
    let len = s.count
    
    var right_pos, left_pos, start_pos: Int
    
    start_pos = s.distance(from: s.startIndex, to: start_index)
    
    
    
    right_pos = start_pos
    left_pos =  start_pos+1 >= len ? start_pos : start_pos + 1
    
    if right_pos == left_pos{
        return ""
    }
    
    if s[s.index(s.startIndex, offsetBy: right_pos)] != s[s.index(s.startIndex, offsetBy: left_pos)]{
        return ""
    }
    
    var right_char, left_char: Character
    while true {
        
        if right_pos-1 < 0 || left_pos + 1 >= len {
            break
        }
        
        right_char = s[s.index(s.startIndex, offsetBy: right_pos - 1)]
        left_char = s[s.index(s.startIndex, offsetBy: left_pos + 1)]
        
        if right_char == left_char{
            right_pos -= 1
            left_pos += 1
            continue
        }
        else
        {
            break
        }
    }
    
    
    return String(s[s.index(s.startIndex, offsetBy: right_pos) ... s.index(s.startIndex, offsetBy: left_pos)])
}


func getLP_single_cc(_ s:[CChar], _ start_index:Int) -> (Int, Int) {
    
    let len = s.count
    var right_pos, left_pos: Int
    right_pos = start_index
    left_pos =  start_index
    
    while true {
        if right_pos - 1 < 0 || left_pos + 1 >= len {
            break
        }

        if s[right_pos - 1 ] == s[left_pos + 1]{
            right_pos -= 1
            left_pos += 1
            continue
        }
        break
    }
    var temp_cc = [CChar](s[right_pos ... left_pos])
    temp_cc.append(0)
    return (right_pos, left_pos)
}

func getLP_double_cc(_ s:[CChar], _ start_index:Int) -> (Int, Int) {
    
    let len = s.count
    
    var right_pos, left_pos: Int
    
    right_pos = start_index
    if start_index + 1 >= len{
        return (0, 0)
        
    }
    left_pos =  start_index + 1
    
    if s[right_pos] != s[left_pos]{
        return (0, 0)
    }

    while true {
        
        if right_pos-1 < 0 || left_pos + 1 >= len {
            break
        }

        if s[right_pos - 1] == s[left_pos + 1]{
            right_pos -= 1
            left_pos += 1
            continue
        }
        break
    }
    
    var temp_cc = [CChar](s[right_pos ... left_pos])
    temp_cc.append(0)
    return (right_pos, left_pos)
}


func longestPalindrome(_ s: String) -> String {
    var max_p = ""
    var temps, temps_d: String
    for var i in 0 ..< s.count{
        temps = getLP_single(s, s.index(s.startIndex, offsetBy: i))
        temps_d = getLP_double(s, s.index(s.startIndex, offsetBy: i))
        max_p = max_p.count < temps.count ? temps : max_p
        max_p = max_p.count < temps_d.count ? temps_d : max_p
    }
    return max_p
}

func longestPalindrome_refactor(_ s: String) -> String {
    var max_right_pos, max_left_pos:Int
    max_left_pos = 0
    max_right_pos = 0
    var temps, temps_d: [CChar]
    var right_pos, left_pos: Int
    var cc:[CChar] = s.cString(using: String.Encoding.utf8)!
    for var i in 0 ..< cc.count{
        (right_pos, left_pos) = getLP_single_cc(cc, i)
        (max_right_pos, max_left_pos) = max_left_pos - max_right_pos < left_pos - right_pos ? ( right_pos, left_pos) : (max_right_pos, max_left_pos)
        (right_pos, left_pos) = getLP_double_cc(cc, i)
        (max_right_pos, max_left_pos) = max_left_pos - max_right_pos < left_pos - right_pos ? ( right_pos, left_pos) : (max_right_pos, max_left_pos)
    }
    return String(s[s.index(s.startIndex, offsetBy: max_right_pos) ... s.index(s.startIndex, offsetBy: max_left_pos)])
}
