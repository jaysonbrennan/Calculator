//
//  CalculatorApp.swift
//  Calculator
//
//  Created by Jayson Brennan on 6/14/23.
//

import SwiftUI

@main
struct CalculatorApp: App {
    @StateObject private var calculator = Calculator()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(calculator)
        }
    }
}
