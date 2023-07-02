//
//  MainView.swift
//  Calculator
//
//  Created by Jayson Brennan on 6/14/23.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var calculator: Calculator
    @State private var displayValue = "0"
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                ZStack {
                    Color.black
                        .ignoresSafeArea()
                    VStack {
                        Spacer()
                            .frame(height: geometry.size.height * 0.2)
                        HStack {
                            Spacer()
                            Text(displayValue)
                                .foregroundColor(.white)
                                .font(.system(size: 100))
                        }
                        .padding(10)
                    }
                }
                .frame(height: geometry.size.height * 0.4)
                OperationsView(displayValue: $displayValue)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(Calculator())
    }
}
