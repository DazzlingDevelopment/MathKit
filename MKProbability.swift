//
//  MKProbability.swift
//  MathKit
//
//  Created by Dazzling Development on 5/25/15.
//  Copyright (c) 2015 DAZ. All rights reserved.
//

import Foundation

class MKProbability {
    var MathKitBasics = MKBasics()
    
    // Permutation Basic
    func permutation(totalObj: Int, objToHandle: Int) -> Double {
        var numerator = MathKitBasics.factorial(totalObj)
        var denominator = MathKitBasics.factorial(totalObj - objToHandle)
        var final: Double = Double(numerator) / Double(denominator)
        return final
    }
    
    // PermutationRepitition
    func permutationWithRepitition(totalObj: Int, similarObjects: [Int]) -> Double {
        var numerator = MathKitBasics.factorial(totalObj)
        var denominator = 1
        var iterator = 0
        while iterator < similarObjects.count {
            denominator *= MathKitBasics.factorial(similarObjects[iterator])
            iterator++
        }
        var final = Double(numerator) / Double(denominator)
        return final
        
    }
    
    // PermutationCircular
    func permutationCircular(totalObj: Int) -> Double {
        var numerator = MathKitBasics.factorial(totalObj)
        var denominator = totalObj
        var final = Double(numerator) / Double(denominator)
        return final
    }
    
    
    // Combination Basic
    func combination(totalObj: Int, objToHandle: Int) -> Double {
        var numerator = MathKitBasics.factorial(totalObj)
        var denominator = ((MathKitBasics.factorial(totalObj - objToHandle)) * (MathKitBasics.factorial(objToHandle)))
        var final: Double = Double(numerator) / Double(denominator)
        return final
    }
    
    // Odds For
    func oddsFor(probSuccess: Double, probFailure: Double) -> Double {
        return probSuccess / probFailure
    }
    
    // Odds Against
    func oddsAgainst(probSuccess: Double, probFailure: Double) -> Double {
        return probFailure / probSuccess
    }
    
    
    
}
