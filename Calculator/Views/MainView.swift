//
//  MainView.swift
//  Calculator
//
//  Created by Jayson Brennan on 6/14/23.
//

import SwiftUI

struct MainView: View {
    @State private var result = 0
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                ZStack {
                    Color.black
                        .ignoresSafeArea()
                    Text(String(result))
                        .foregroundColor(.white)
                        .font(.system(size: 100))
                        .position(x: geometry.size.width - 50, y: 200)
                }
                .frame(height: geometry.size.height * 0.4)
                OperationsView()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
