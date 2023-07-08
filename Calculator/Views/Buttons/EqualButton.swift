//
//  EqualButton.swift
//  Calculator
//
//  Created by Jayson Brennan on 7/1/23.
//

import SwiftUI

struct EqualButton: View {
    @Binding var displayValue: String
    @Binding var rhs: Bool
    @EnvironmentObject var calculator: Calculator
    
    var body: some View {
        CalcButton(symbol: "=", forgroundColor: .black,
                   background: .green, action: {
            guard calculator.op != nil else {
                return
            }
            
            calculator.calculate()
            if (calculator.op == .divide && calculator.numberTwo == 0) {
                displayValue = "Error"
            } else {
                rhs = false
                displayValue = Util.numToStr(calculator.numberOne)
            }
        })
    }
}

struct EqualButton_Previews: PreviewProvider {
    static var previews: some View {
        EqualButton(displayValue: .constant("0"), rhs: .constant(false))
    }
}
