//
//  OperatorButton.swift
//  Calculator
//
//  Created by Jayson Brennan on 7/1/23.
//

import SwiftUI

struct OperatorButton: View {
    var op: String
    @Binding var rhs: Bool
    @EnvironmentObject var calculator: Calculator
    
    let opConversion = ["÷": Calculator.Operator.divide,
                        "x": Calculator.Operator.multiply,
                        "+": Calculator.Operator.add,
                        "-": Calculator.Operator.subtract]
    
    var body: some View {
        CalcButton(symbol: op, forgroundColor: .black,
                   background: .green, action: {
            rhs = true
            calculator.op = opConversion[op]
            calculator.numberTwo = 0
        })
    }
}

struct OperatorButton_Previews: PreviewProvider {
    static var previews: some View {
        OperatorButton(op: "÷", rhs: .constant(false))
            .environmentObject(Calculator())
    }
}
