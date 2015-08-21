//
//  MKBasics.swift
//  MathKit
//
//  Created by Dazzling Development on 5/25/15.
//  Copyright (c) 2015 DAZ. All rights reserved.
//

import Foundation

class MKBasics {
    let e = 2.7182818285
    let pi = 3.1415926536
    
    // Factorial
    func factorial(num: Int) -> Int{
        var iterator: Int = num
        var total: Int = 1
        while iterator <= num && iterator > 0 {
            total *= iterator
            iterator++
        }
        return total
    }
    // Powers
    func power(num: Double, power: Double) -> Double {
        var iterator: Double = 1
        var final: Double = 1
        while iterator <= power {
            final *= num
            iterator++
        }
        return final
    }
    
    // Roots
    func rootCustom(num: Double, root: Double) -> Double {
        return power(num, power: 1/root)
    }
    
}
