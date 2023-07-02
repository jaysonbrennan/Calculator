//
//  EqualButton.swift
//  Calculator
//
//  Created by Jayson Brennan on 7/1/23.
//

import SwiftUI

struct EqualButton: View {
    @Binding var displayValue: String
    @EnvironmentObject var calculator: Calculator
    
    var body: some View {
        CalcButton(symbol: "=", forgroundColor: .black,
                   background: .green, action: {
            if calculator.op != nil {
                calculator.calculate()
                displayValue = Util.numToStr(calculator.numberOne)
            }
        })
    }
}

struct EqualButton_Previews: PreviewProvider {
    static var previews: some View {
        EqualButton(displayValue: .constant("0"))
    }
}
