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
    @EnvironmentObject var calculator: Calculator
    
    var body: some View {
        CalcButton(symbol: String(number), forgroundColor: .green,
                   background: .black, action: {
            if calculator.op == nil {
                calculator.numberOne = (calculator.numberOne * 10) + Double(number)
                displayValue = Util.numToStr(calculator.numberOne)
            } else {
                calculator.numberTwo = (calculator.numberTwo * 10) + Double(number)
                displayValue = Util.numToStr(calculator.numberTwo)
            }
        })
    }
}

struct NumButton_Previews: PreviewProvider {
    static var previews: some View {
        NumButton(number: 4, displayValue: .constant("0"))
            .environmentObject(Calculator())
    }
}
