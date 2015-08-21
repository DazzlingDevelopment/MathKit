//
//  MKGeometry.swift
//  MathKit
//
//  Created by Dazzling Development on 5/26/15.
//  Copyright (c) 2015 DAZ. All rights reserved.
//

import Foundation

class MKGeometry {
    let MathKitBasic = MKBasics()
    
    func rectangleArea(base: Double, height: Double) -> Double {
        return base * height
    }
    func rectanglePerimeter(length: Double, height: Double) -> Double {
        return 2 * length + 2 * height
    }
    func triangleArea(base: Double, height: Double) -> Double {
        return 1/2 * base * height
    }
    func trianglePerimeter(side1: Double, side2: Double, side3: Double) -> Double {
        return side1 + side2 + side3
    }
    func circleArea(radius: Double) -> Double {
        return MathKitBasic.pi * MathKitBasic.power(radius, power: 2)
    }
    func circleCircumfrence(radius: Double) -> Double {
        return 2 * MathKitBasic.pi * radius
    }
    func parrallelpipedVolume(length: Double, width: Double, height: Double) -> Double {
        return length * width * height
    }
    func cylinderVolume(length: Double, radius: Double) -> Double {
        return MathKitBasic.pi * MathKitBasic.power(radius, power: 2) * length
    }
    func cylinderSurfaceArea(length: Double, radius: Double) -> Double {
        return 2 * MathKitBasic.pi * length + 2 * MathKitBasic.pi * MathKitBasic.power(radius, power: 2)
    }
    func sphereVolume(radius: Double) -> Double {
        return 4/3 * MathKitBasic.pi * MathKitBasic.power(radius, power: 3)
    }
    func sphereSurfaceArea(radius: Double) -> Double {
        return 4 * MathKitBasic.pi * MathKitBasic.power(radius, power: 2)
    }
    func pythagoreanTheorem(a: Double, b: Double) -> Double {
        return MathKitBasic.rootCustom(MathKitBasic.power(a, power: 2) + MathKitBasic.power(b, power: 2), root: 2)
    }
}
