//
//  tests.swift
//  tests
//
//  Created by Wang Fan on 2019/8/18.
//  Copyright © 2019 Wang Fan. All rights reserved.
//

import XCTest

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var container = Dictionary<Int, Int>()
    for (index, value) in nums.enumerated() {
        let match = target - value
        if container.keys.contains( match)
        {
            return [container[match] as! Int, index]
            
        }
        container[value] = index
    }
    return []
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

}
