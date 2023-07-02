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
            Color.gray
                .ignoresSafeArea()
            GeometryReader { geometry in
                VStack {
                    HStack(spacing: 8) {
                        VStack(spacing: 8) {
                            Grid {
                                GridRow {
                                    NumButton(number: 7)
                                    NumButton(number: 8)
                                    NumButton(number: 9)
                                }
                                GridRow {
                                    NumButton(number: 4)
                                    NumButton(number: 5)
                                    NumButton(number: 6)
                                }
                                GridRow {
                                    NumButton(number: 1)
                                    NumButton(number: 2)
                                    NumButton(number: 3)
                                }
                            }
                            .frame(width: geometry.size.width * 0.75,
                                   height: geometry.size.width * 0.75)
                            NumButton(number: 0)
                                .frame(width: geometry.size.width * 0.75,
                                       height: geometry.size.width * 0.23)
                        }
                        VStack(spacing: 8) {
                            OperatorButton(op: "÷")
                            OperatorButton(op: "x")
                            OperatorButton(op: "-")
                            OperatorButton(op: "+")
                        }
                        .frame(width: geometry.size.width * 0.23,
                               height: geometry.size.width)
                    }
                    EqualButton()
                        .frame(height: geometry.size.width * 0.23)
                }
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
