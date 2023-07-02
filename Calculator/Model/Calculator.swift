//
//  Calculator.swift
//  Calculator
//
//  Created by Jayson Brennan on 6/20/23.
//

import Foundation

final class Calculator: ObservableObject {
    var numberOne: Int = 0
    var numberTwo: Int = 0
    var op: Operator?
    
    enum Operator {
        case add
        case subtract
        case multiply
        case divide
    }
}
