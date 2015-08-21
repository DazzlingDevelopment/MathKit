//
//  MKSolver.swift
//  MathKit
//
//  Created by Dazzling Development on 5/28/15.
//  Copyright (c) 2015 DAZ. All rights reserved.
//

import Foundation

class MKSolver {
    
    var outputArray: [String] = []
    var opStack: [String] = []
    let opDic = ["+":0, "-":0, "*":1, "/":1, "^":2, "!":3, "%":4, "(":5, ")":5]
    
    func solve(var equ: [String]) -> [String] {
        "Converting Infex to Postfex.."
        for (index, token) in enumerate(equ) {
            if opDic[token] != nil {
                if token == "(" {
                    var startIndex = index
                    var i = index + 1
                    var endIndex: Int?
                    var openPar: Int = 0
                    while i < equ.count && endIndex == nil {
                        if equ[i] == "(" {
                            openPar++
                            i++
                        } else if equ[i] == ")" {
                            if openPar == 0 {
                                endIndex = i
                                let math = MKSolver()
                                let tempEqu = Array(equ[startIndex + 1..<endIndex!])
                                math.solve(tempEqu)
                                let sol = math.outputArray
                                
                                if startIndex != 0 && opDic[equ[startIndex - 1]] == nil {
                                    equ.insert("*", atIndex: startIndex - 1)
                                    startIndex = startIndex + 1
                                    endIndex = endIndex! + 1
                                }
                                if equ.count >= endIndex! + 2 {
                                    if opDic[equ[endIndex! + 1]] == nil {
                                        equ.insert("*", atIndex: endIndex! + 1)
                                    }
                                }
                                var range: Range<Int> = Range<Int>(start: startIndex, end: endIndex! + 1)
                                equ.removeRange(range)
                                equ.replaceRange(Range<Int>(start: startIndex, end: startIndex), with: sol)
                            } else {
                                openPar--
                                i++
                            }
                        } else {
                            i++
                        }
                    }
                    let math = MKSolver()
                    math.solve(equ)
                    outputArray = math.outputArray
                    return outputArray
                }
                let cTokenPrec = opDic[token]
                var i = opStack.count - 1
                var cont = true
                while i != -1 && cont == true {
                    let nextTokenPrec = opDic[opStack[i]]
                    if cTokenPrec <= nextTokenPrec {
                        outputArray.append(opStack[i])
                        opStack.removeAtIndex(i)
                        i = i - 1
                    } else {
                        cont = false
                    }
                }
                opStack.append(token)
            } else {
                outputArray.append(token)
            }
        }
        var opI = opStack.count - 1
        if opI != -1 {
            while opI >= 0 {
                outputArray.append(opStack[opI])
                opStack.removeAtIndex(opI)
                opI = opI - 1
            }
        }
        println("Done converting Infex to Postfex. Solving.\n\(outputArray)")
        var i = 0
        var nums = 0
        while outputArray.count > 1 && i < outputArray.count {
            let token = outputArray[i]
            if opDic[token] != nil {
                switch token {
                case "+":
                    if nums >= 2 {
                        var tmp = (outputArray[i - 2] as NSString).doubleValue + (outputArray[i - 1] as NSString).doubleValue
                        outputArray[i] = "\(tmp)"
                        outputArray.removeAtIndex(i - 2)
                        outputArray.removeAtIndex(i - 2)
                        nums--
                    }
                    
                case "-":
                    if nums >= 2 {
                        var tmp = (outputArray[i - 2] as NSString).doubleValue - (outputArray[i - 1] as NSString).doubleValue
                        outputArray[i] = "\(tmp)"
                        outputArray.removeAtIndex(i - 2)
                        outputArray.removeAtIndex(i - 2)
                        nums--
                    }
                    
                case "*":
                    if nums >= 2 {
                        var tmp = (outputArray[i - 2] as NSString).doubleValue * (outputArray[i - 1] as NSString).doubleValue
                        outputArray[i] = "\(tmp)"
                        outputArray.removeAtIndex(i - 2)
                        outputArray.removeAtIndex(i - 2)
                        nums--
                    }
                case "/":
                    if nums >= 2 {
                        var tmp = (outputArray[i - 2] as NSString).doubleValue / (outputArray[i - 1] as NSString).doubleValue
                        outputArray[i] = "\(tmp)"
                        outputArray.removeAtIndex(i - 2)
                        outputArray.removeAtIndex(i - 2)
                        nums--
                    }
                case "^":
                    let mkbasics = MKBasics()
                    let results = mkbasics.power((outputArray[i - 2] as NSString).doubleValue, power: (outputArray[i - 1] as NSString).doubleValue)
                    outputArray[i] = "\(results)"
                    outputArray.removeAtIndex(i - 2)
                    outputArray.removeAtIndex(i - 2)
                    //                case "!":
                case "%":
                    if nums >= 1 {
                        var tmp = (outputArray[i - 1] as NSString).doubleValue / 100
                        outputArray[i] = "\(tmp)"
                        outputArray.removeAtIndex(i - 1)
                    }
                default:
                    println("Unrecognized operator.")
                }
                i = 0
            } else {
                nums++
                i++
            }
            
        }
        return outputArray
    }

}
