//
//  CalcButton.swift
//  Calculator
//
//  Created by Jayson Brennan on 6/20/23.
//

import SwiftUI

struct CalcButton: View {
    var symbol: String
    var forgroundColor: Color
    var background: Color
    var action: () -> Void
    
    @EnvironmentObject var calculator: Calculator
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            GeometryReader { geometry in
                Text(symbol)
                    .font(.system(size: 60))
                    .frame(width: geometry.size.width,
                           height: geometry.size.height)
                    .foregroundColor(forgroundColor)
                    .background(background)
                    .cornerRadius(geometry.size.height / 2)
                    .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                    .shadow(radius: 15)
            }
        })
    }
}

struct CalcButton_Previews: PreviewProvider {
    static var previews: some View {
        CalcButton(symbol: "x", forgroundColor: .pink, background: .white,
                   action: { print("hello") })
    }
}
