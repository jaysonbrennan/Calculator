//
//  Util.swift
//  Calculator
//
//  Created by Jayson Brennan on 7/2/23.
//

import Foundation

struct Util {
    static func numToStr(_ value: Double) -> String {
        if (floor(value) == value)
        {
            return "\(Int(value))"
        } else {
            return "\(value)"
        }
    }
}
