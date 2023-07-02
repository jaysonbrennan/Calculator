//
//  Calculator.swift
//  Calculator
//
//  Created by Jayson Brennan on 6/20/23.
//

import Foundation

final class Calculator: ObservableObject {
    @Published var numberOne = 0.0
    @Published var numberTwo = 0.0
    var op: Operator?
    
    enum Operator {
        case add
        case subtract
        case multiply
        case divide
    }
    
    func calculate() {
        switch op {
        case .add:
            numberOne = numberOne + numberTwo
        case .subtract:
            numberOne = numberOne - numberTwo
        case .multiply:
            numberOne = numberOne * numberTwo
        case .divide:
            if numberTwo == 0 {
                numberOne = 0
            } else {
                numberOne = numberOne / numberTwo
            }
        default:
            numberOne = 0
        }
    }
}
