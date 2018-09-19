//
//  TwoSum.swift
//  AlgorithmQuestions
//
//  Created by olddonkey on 2018/9/16.
//  Copyright © 2018年 olddonkey. All rights reserved.
//
import Foundation

/*:
 ## Leetcode 1. Two Sum
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.You may assume that each input would have exactly one solution, and you may not use the same element twice.
 Example:
 Given nums = [2, 7, 11, 15], target = 9,
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 */

/*:
 ## Solution
 ### Brute-Force:
 Scan through the given number from left to right twice, find the right answer.
 Time complexity: O(n^2)
 
 ### Dictionary:
 Scan from left to right, try to find target-currentNumber exist or not in dictionary, if yes, get the index from dictionary as value, if can't find, store the number-index pair into dictionary
 Time complexity: O(n)
 */

class TwoSum {
    /// Optimized solution
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = Dictionary<Int, Int>()
        var result = [Int].init(repeating: 0, count: 2)
        for i in 0..<nums.count {
            if dict.keys.contains(target - nums[i]) {
                result[0] = dict[target - nums[i]] ?? 0
                result[1] = i
                return result
            }
            // Store number-index pair to dictionary
            dict[nums[i]] = i
        }
        return result
    }
    
    // Brute force solution
    func twoSumBruteForce(_ nums: [Int], _ target: Int) -> [Int] {
        let numsCount = nums.count
        for i in 0..<numsCount {
            for j in 0..<numsCount {
                if nums[i] + nums [j] == target {
                    return [i, j]
                }
            }
        }
        return [0, 0]
    }
}
