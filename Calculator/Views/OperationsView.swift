//
//  OperationsView.swift
//  Calculator
//
//  Created by Jayson Brennan on 7/1/23.
//

import SwiftUI

struct OperationsView: View {
    @Binding var displayValue: String
    @State private var rhs = false
    
    var body: some View {
        ZStack {
            Color(red: 0.229, green: 0.229, blue: 0.229)
                .ignoresSafeArea()
            GeometryReader { geometry in
                VStack {
                    HStack {
                        NumButton(number: 7, displayValue: $displayValue,
                                  rhs: $rhs)
                        NumButton(number: 8, displayValue: $displayValue,
                                  rhs: $rhs)
                        NumButton(number: 9, displayValue: $displayValue,
                                  rhs: $rhs)
                        OperatorButton(op: "÷", rhs: $rhs)
                    }
                    HStack {
                        NumButton(number: 4, displayValue: $displayValue,
                                  rhs: $rhs)
                        NumButton(number: 5, displayValue: $displayValue,
                                  rhs: $rhs)
                        NumButton(number: 6, displayValue: $displayValue,
                                  rhs: $rhs)
                        OperatorButton(op: "x", rhs: $rhs)
                    }
                    HStack {
                        NumButton(number: 1, displayValue: $displayValue,
                                  rhs: $rhs)
                        NumButton(number: 2, displayValue: $displayValue,
                                  rhs: $rhs)
                        NumButton(number: 3, displayValue: $displayValue,
                                  rhs: $rhs)
                        OperatorButton(op: "-", rhs: $rhs)
                    }
                    HStack {
                        NumButton(number: 0, displayValue: $displayValue,
                                  rhs: $rhs)
                            .frame(width: geometry.size.width * 0.75)
                        OperatorButton(op: "+", rhs: $rhs)
                    }
                    EqualButton(displayValue: $displayValue, rhs: $rhs)
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
