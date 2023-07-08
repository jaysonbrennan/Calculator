//
//  NumButton.swift
//  Calculator
//
//  Created by Jayson Brennan on 7/1/23.
//

import SwiftUI

struct NumButton: View {
    var number: Int
    @Binding var displayValue: String
    @Binding var rhs: Bool
    @EnvironmentObject var calculator: Calculator
    
    var body: some View {
        CalcButton(symbol: String(number), forgroundColor: .green,
                   background: .black, action: {
            if rhs {
                calculator.numberTwo = (calculator.numberTwo * 10) + Double(number)
                displayValue = Util.numToStr(calculator.numberTwo)
            } else {
                calculator.numberOne = (calculator.numberOne * 10) + Double(number)
                displayValue = Util.numToStr(calculator.numberOne)
            }
        })
    }
}

struct NumButton_Previews: PreviewProvider {
    static var previews: some View {
        NumButton(number: 4, displayValue: .constant("0"),
                  rhs: .constant(false))
        .environmentObject(Calculator())
    }
}
