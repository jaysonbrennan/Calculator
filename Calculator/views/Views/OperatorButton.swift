//
//  OperatorButton.swift
//  Calculator
//
//  Created by Jayson Brennan on 7/1/23.
//

import SwiftUI

struct OperatorButton: View {
    var op: String
    @EnvironmentObject var calculator: Calculator
    
    var opConversion = ["÷": Calculator.Operator.divide,
                        "x": Calculator.Operator.multiply,
                        "+": Calculator.Operator.add,
                        "-": Calculator.Operator.subtract]
    
    var body: some View {
        CalcButton(symbol: op, forgroundColor: .pink,
                   background: .white, action: {
            calculator.op = opConversion[op]
        })
    }
}

struct OperatorButton_Previews: PreviewProvider {
    static var previews: some View {
        OperatorButton(op: "÷")
            .environmentObject(Calculator())
    }
}
