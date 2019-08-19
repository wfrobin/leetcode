//
//  tests.swift
//  tests
//
//  Created by Wang Fan on 2019/8/18.
//  Copyright © 2019 Wang Fan. All rights reserved.
//

import XCTest
@testable import leetcode



public class ListNode{
    public var val: Int
    public var next: ListNode?
    public init(_ val:Int) {
        self.val = val
        self.next = nil
    }
}


class tests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        //var v = VideoMode()
        //s.twoSum([1,2,3],5)
        //print(s)
        let results = twoSum([1,2,3], 5)
        print(results)
    }
    
    func testAddTwoNumbers() {
        let l1 = ListNode(2)
        l1.next = ListNode(4)
        l1.next?.next = ListNode(3)
        
        let l2 = ListNode(5)
        l2.next = ListNode(6)
        l2.next?.next = ListNode(4)
        
        let r = addTwoNumbers(l1,l2)
        print(r)
    }
    
    func test_lengthOfLongestSubstring()
    {
        var r = lengthOfLongestSubstring("abcabcbb")
        XCTAssertEqual(3, r)
        print("lengthOfLongestSubstring:", r)
        
        r = lengthOfLongestSubstring("bbb")
        XCTAssertEqual(1, r)
        print("lengthOfLongestSubstring:", r)
        
        r = lengthOfLongestSubstring("pwwkew")
        XCTAssertEqual(3, r)
        print("lengthOfLongestSubstring:", r)
        
        r = lengthOfLongestSubstring(" ")
        XCTAssertEqual(1, r)
        print("lengthOfLongestSubstring:", r)
        
        r = lengthOfLongestSubstring("")
        XCTAssertEqual(0, r)
        print("lengthOfLongestSubstring:", r)
        
        r = lengthOfLongestSubstring("dvdf")
        XCTAssertEqual(3, r)
        print("lengthOfLongestSubstring:", r)
    }

}
