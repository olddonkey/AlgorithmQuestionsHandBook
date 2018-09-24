# <center>编程题手册</center> 
###<center>Vol.1</center> 

## 题目

#### Two Sum （Leecode 1）

Given an array of integers, return indices of the two numbers such that they add up to a specific target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

Example:
```
Given nums = [2, 7, 11, 15], target = 9,

Because nums[0] + nums[1] = 2 + 7 = 9,
return [0, 1].
```

-------

输入一个由整数构成的数组，同时给定一个目标值，要求返回相加和等于目标值的两个数字在数组中的位置。

可以假定输入只会有一个结果，同一个数字只能使用一次。

例：
```
输入 nums = [2, 7, 11, 15], 目标值 = 9,

因为 nums[0] + nums[1] = 2 + 7 = 9,
所以返回 [0, 1].
```

## 题目分析

` 经典题，LeetCode 第一题。`

##### 暴力解法：

两个 for-loop 嵌套，找出所有可能的情况，并对每对数字求和，与目标值对比，若相等则返回由这两个数字下标组成的数组。若遍历过所有情况都没有正确解，返回[0, 0]。

**时间复杂度：**最差情况需要遍历所有可能的组合, O(n^2)

##### HashMap/字典解法：

扫一遍数组，每次去寻找 target - currentNumber 的值是否在 Map/字典 中存在，若不存在，则将其以数字为 Key，下标为 Value，添加到 Map/字典 当中去。若存在，则直接返回对应 Key 的 Value 和当前下标组成的数组。

**时间复杂度：**因为从 HashMap 或字典中寻找一个 Key 是否存在的时间复杂度是 O(1), 所以整体的复杂度是 O(n)

## 代码

``` Swift
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
```