# <center>编程题手册</center> 
###<center>Vol.2</center> 

## 题目

#### Longest Substring Without Repeating Characters （LeetCode 3）

Given a string, find the length of the longest substring without repeating characters.

Example 1:
```
Input: "abcabcbb"
Output: 3 
Explanation: The answer is "abc", with the length of 3. 
```
Example 2:
```
Input: "bbbbb"
Output: 1
Explanation: The answer is "b", with the length of 1.
```
Example 3:
```
Input: "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3. 
             Note that the answer must be a substring, 
             "pwke" is a subsequence and not a substring.
```
-------

输入一个字符串，返回没有重复字符串的最长子字符串的长度

例 1:
```
输入: "abcabcbb"
输出: 3 
解答: 不重复字符串的最长子串是 "abc" ，所以应该返回 "abc" 的长度3. 
```
例 2:
```
输入: "bbbbb"
输出: 1
解答: 不重复字符串的最长子串是 "b" ，所以应该返回 "b" 的长度3.
```
例 3:
```
输入: "pwwkew"
输出: 3
解答: 不重复字符串的最长子串是 "wke" ，所以应该返回 "wke" 的长度3.
    需要注意的是因为这里要求的是最小子串，而非子序列，所以
```

## 题目分析

` 经典题，LeetCode 第三题。`

##### 双指针：

这道题目算是一道非常经典的双指针问题。

类似的题目有 Sliding Window，之后应该也会讲到。

解法其实并不复杂。建立一个 Int，用来保存当前的最大长度。两个指针，一个指向 substring 的头，一个指向 substring 的尾部，初始均指向头部。

每次开始前，从 left 开始寻找，直到找到和 right 相同的字符，将 left 移动到那个字符的后一个，这样，就能保证不会出现重复字符。

没找到则不用理会。

之后将 right 向右移动一位。如此从左到右，就可以找到所有的情况。

## 代码

``` Swift
class LongestSubstringWithoutRepeatingCharacters {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let array  = Array(s)
        var length = 0
        var left = 0, right = 0
        var i = 0
        
        while right < array.count {
            i = left
            while i < right {
                // If it is the same as the last character, 
                //move left forward.
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
```