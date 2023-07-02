//
//  NumButton.swift
//  Calculator
//
//  Created by Jayson Brennan on 7/1/23.
//

import SwiftUI

struct NumButton: View {
    var number: Int
    @EnvironmentObject var calculator: Calculator
    
    var body: some View {
        CalcButton(symbol: String(number), forgroundColor: .white,
                   background: .cyan, action: {
            if calculator.op == nil {
                calculator.numberOne = (calculator.numberOne * 10) + number
            } else {
                calculator.numberTwo = (calculator.numberTwo * 10) + number
            }
        })
    }
}

struct NumButton_Previews: PreviewProvider {
    static var previews: some View {
        NumButton(number: 4)
            .environmentObject(Calculator())
    }
}
