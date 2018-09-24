//
//  LongestSubstringWithoutRepeatingCharactersTests.swift
//  AlgorithmQuestionsTests
//
//  Created by olddonkey on 2018/9/23.
//  Copyright © 2018年 olddonkey. All rights reserved.
//

import XCTest

class LongestSubstringWithoutRepeatingCharactersTests: XCTestCase {
    func testExample1() {
        let result = LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring("abcabcbb")
        XCTAssertTrue(result == 3, "Didn't find the right answer")
    }

    func testExample2() {
        let result = LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring("bbbbb")
        XCTAssertTrue(result == 1, "Didn't find the right answer")
    }
    
    func testExample3() {
        let result = LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring("pwwkew")
        XCTAssertTrue(result == 3, "Didn't find the right answer")
    }
}
