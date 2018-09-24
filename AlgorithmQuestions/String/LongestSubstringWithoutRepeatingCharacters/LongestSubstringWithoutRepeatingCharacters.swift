//
//  LongestSubstringWithoutRepeatingCharacters.swift
//  AlgorithmQuestions
//
//  Created by olddonkey on 2018/9/23.
//  Copyright © 2018年 olddonkey. All rights reserved.
//

import Foundation

class LongestSubstringWithoutRepeatingCharacters {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let array  = Array(s)
        var length = 0
        var left = 0, right = 0
        var i = 0
        
        while right < array.count {
            i = left
            while i < right {
                // If it is the same as the last character, move left forward.
                if array[i] == array[right] {
                    left = i + 1
                    break
                }
                i += 1
            }
            length = max(length, right - left + 1)
            right += 1
        }
        return length
    }
}
