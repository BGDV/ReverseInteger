//
//  main.swift
//  ReverseInteger
//
//  Created by BGDV on 16.08.2022.
//


/*
 Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

 Assume the environment does not allow you to store 64-bit integers (signed or unsigned).
 */

import Foundation

class Solution {
    func reverse(_ x: Int) -> Int {
        
        var numb = [String]()
        let text = String(x)
        var reversed = ""
        var result = 0
  
        for i in text {
            if i != "-" {
                numb.append(String(i))
            }
        }
        numb.reverse()

        for i in numb {
            reversed = reversed + i
        }
 
        result = Int(reversed) ?? 0
        
        if text.hasPrefix("-") {
            result = result - (result*2)
        }
        
        guard result < Int32.max && result > Int32.min else { return 0 }
        
        
        return result
            
    }

}
    let newNumber = Solution().reverse(343243545454)
    print(newNumber)

