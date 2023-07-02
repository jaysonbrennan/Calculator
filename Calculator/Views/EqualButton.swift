//
//  EqualButton.swift
//  Calculator
//
//  Created by Jayson Brennan on 7/1/23.
//

import SwiftUI

struct EqualButton: View {
    var body: some View {
        CalcButton(symbol: "=", forgroundColor: .white,
                   background: .pink, action: {
            
        })
    }
}

struct EqualButton_Previews: PreviewProvider {
    static var previews: some View {
        EqualButton()
    }
}
