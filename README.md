# MathKit
A series of classes which make doing math in Swift easy and painless.

If you use any MathKit classes, please link back to this page and provide credit to myself (Dazzling Development).

## Installation
Download desired .swift files and drag them into your project.

## Usage
Using MathKit is simple! Simple create an instance of the desired class, then access it's functions. For example, if you wish to solve an expression, simple do this:
```Swift
let mathSolver = MKSolver()
let results = mathSolver.solve(["3", "+", "5", "^", "9"])
println(results)
```
Output: [1953128.0]

With three lines of code, you have solved and printed an expression!

## Dependencies
Some classes depend on other classes. MKGeometry and MKSolver, for example, both rely on MKBasics for some basic math. Below is a list of dependencies:
1. MKBasics - No Dependencies!
2. MKProbability - Requires MKBasics
3. MKRealWorldData - Requires MKBasics
4. MKPhysics - Requires MKBasics
5. MKGeometry - Requires MKBasics
6. MKSolver - Requires MKBasics

## Class Info
Each class has it's own functionality. MKGeometry, for instance, performs math commonly found in Geometry, such as area, perimeter, and volume calculations. Below is a list of classes and their uses:
* MKBasics - Provides basic mathematical functions and operations, such as factorials, exponents, and roots.
* MKProbability - Provides probability functions and equations, such as permutations, combinations, and odds
* MKRealWorldData - Provides equations and functions that could commonly be found in the real world, such as interest and growth and decay.
* MKPhysics - Provides physics equations, fuctions, and constants. Examples are: displacement, velocity, acceleration, momentum, orbits, hookesLaw, etc..
* MKGeometry - Provides Geometry equations and functions, such as volume, area, and perimeter equations.
* MKSolver - MKSolver is a special class which does not contain equations for a specific branch of mathematics. Instead, it is a class made to solve expressions. Expressions can contain these operators: (,),+,-,*,/,%,^. MKSolver will convert Infex expressions to Postfex form using Dijkstra's Shunting-Yard algorithm, then perform math. Items placed inside parentheses will be operated on first, thuse following the order of operations. 

## TO-DO
1. Finish making all functions input and output Doubles instead of Integers (Functions were originally made to only accept Integers, but then I realized the stupidity of that).
2. Add more equations for MKProbability, MKRealWorldData, MKPhysics, and MKGeometry
3. Add MKCalculus and MKSequences to MathKit
4. Add more operands to MKSolver (Factorials, roots, Sin, Cos, Tan, etc..)
5. Make MKSolver more fool proof, and add error outputs
6. Fix bugs and typos that I most surely made and have yet to catch
