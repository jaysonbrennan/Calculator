//
//  OperationsView.swift
//  Calculator
//
//  Created by Jayson Brennan on 7/1/23.
//

import SwiftUI

struct OperationsView: View {
    var body: some View {
        ZStack {
            Color(red: 0.229, green: 0.229, blue: 0.229)
                .ignoresSafeArea()
            GeometryReader { geometry in
                VStack {
                    HStack {
                        NumButton(number: 7)
                        NumButton(number: 8)
                        NumButton(number: 9)
                        OperatorButton(op: "÷")
                    }
                    HStack {
                        NumButton(number: 4)
                        NumButton(number: 5)
                        NumButton(number: 6)
                        OperatorButton(op: "x")
                    }
                    HStack {
                        NumButton(number: 1)
                        NumButton(number: 2)
                        NumButton(number: 3)
                        OperatorButton(op: "-")
                    }
                    HStack {
                        NumButton(number: 0)
                            .frame(width: geometry.size.width * 0.75)
                        OperatorButton(op: "+")
                    }
                    EqualButton()
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
                OperationsView()
                    .frame(height: geometry.size.height * 0.6)
            }
        }
    }
}
