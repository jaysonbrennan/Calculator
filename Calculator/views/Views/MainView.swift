//
//  MainView.swift
//  Calculator
//
//  Created by Jayson Brennan on 6/14/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                Color.cyan
                    .ignoresSafeArea()
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
