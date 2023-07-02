//
//  OperationsView.swift
//  Calculator
//
//  Created by Jayson Brennan on 7/1/23.
//

import SwiftUI

struct OperationsView: View {
    @Binding var displayValue: String
    
    var body: some View {
        ZStack {
            Color(red: 0.229, green: 0.229, blue: 0.229)
                .ignoresSafeArea()
            GeometryReader { geometry in
                VStack {
                    HStack {
                        NumButton(number: 7, displayValue: $displayValue)
                        NumButton(number: 8, displayValue: $displayValue)
                        NumButton(number: 9, displayValue: $displayValue)
                        OperatorButton(op: "÷")
                    }
                    HStack {
                        NumButton(number: 4, displayValue: $displayValue)
                        NumButton(number: 5, displayValue: $displayValue)
                        NumButton(number: 6, displayValue: $displayValue)
                        OperatorButton(op: "x")
                    }
                    HStack {
                        NumButton(number: 1, displayValue: $displayValue)
                        NumButton(number: 2, displayValue: $displayValue)
                        NumButton(number: 3, displayValue: $displayValue)
                        OperatorButton(op: "-")
                    }
                    HStack {
                        NumButton(number: 0, displayValue: $displayValue)
                            .frame(width: geometry.size.width * 0.75)
                        OperatorButton(op: "+")
                    }
                    EqualButton(displayValue: $displayValue)
                }
                .frame(height: geometry.size.width * 1.2)
            }
            .padding(10)
        }
    }
}

struct OperationsView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                OperationsView(displayValue: .constant("456"))
                    .frame(height: geometry.size.height * 0.6)
            }
        }
    }
}
