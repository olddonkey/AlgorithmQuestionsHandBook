//
//  TwoSumTests.swift
//  AlgorithmQuestionsTests
//
//  Created by olddonkey on 2018/9/16.
//  Copyright © 2018年 olddonkey. All rights reserved.
//

import XCTest

class TwoSumTests: XCTestCase {
    
    func testValidInputAndTarget() {
        /// Input is [2,7,11,15], target value is 9
        /// Should be able to find target index [0,1]
        let result = TwoSum().twoSum([2, 7, 11, 15], 9)
        XCTAssert(result == [0, 1], "Didn't find the right answer")
    }
    
    func testInvalidInput() {
        /// Input is not valid
        /// We should be able to handle, for here we return [0, 0]
        let result = TwoSum().twoSum([], 9)
        XCTAssert(result == [0, 0], "Didn't find the right answer")
    }
    
    func testCannotFindPair() {
        /// When not valid pair can be found
        /// We should be able to handle, for here we return [0, 0]
        let result = TwoSum().twoSum([2,7,11,15], 10)
        XCTAssertTrue(result == [0, 0], "Didn't find the right answer")
    }
    
}
