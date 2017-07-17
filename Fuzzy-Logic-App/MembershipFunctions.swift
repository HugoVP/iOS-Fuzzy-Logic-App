//
//  MembershipFunctions.swift
//  Fuzzy-Logic-App
//
//  Created by Hugo on 17/07/17.
//  Copyright © 2017 Hugo. All rights reserved.
//

import Foundation

class MembershipFuncs {
    static func boolean(x: Double, x0: Double) -> Double {
        return x <= x0 ? 0 : 1
    }
    
    static func inverseBoolean(x: Double, x0: Double) -> Double {
        return x < x0 ? 1 : 0
    }
    
    static func grade(x: Double, x0: Double, x1: Double) -> Double {
        switch x {
        case ...x0:
            return 0
        case x0...x1:
            return x / (x1 - x0) - x0/(x1 - x0)
        case x1...:
            return 1
        default:
            return 0
        }
    }
    
    static func inverseGrade(x: Double, x0: Double, x1: Double) -> Double {
        switch x {
        case ...x0:
            return 1
        case x0...x1:
            return -(x / (x1 - x0)) + x1/(x1 - x0)
        case x1...:
            return 0
        default:
            return 0
        }
    }
    
    static func triangle(x: Double, x0: Double, x1: Double, x2: Double) -> Double {
        switch x {
        case ...x0:
            return 0
        case x0...x1:
            return x / (x1 - x0) - x0 / (x1 - x0)
        case x1...x2:
            return -(x / (x2 - x1)) + x1/(x2 - x1)
        case x2...:
            return 1
        default:
            return 0
        }
    }
    
    static func trapezoid(x: Double, x0: Double, x1: Double, x2: Double, x3: Double) -> Double {
        switch x {
        case ...x0:
            return 0
        case x0...x1:
            return x / (x1 - x0) - x0 / (x1 - x0)
        case x1...x2:
            return 1
        case x2...x3:
            return -(x / (x3 - x2)) + x3/(x3 - x2)
        case x3...:
            return 0
        default:
            return 0
        }
    }
    
    static func AND(a: Double, b: Double) -> Double {
        return Double.minimum(a, b)
    }
    
    static func OR(a: Double, b: Double) -> Double {
        return Double.maximum(a, b)
    }
    
    static func NOT(a: Double) -> Double {
        return 1 - a
    }
}

