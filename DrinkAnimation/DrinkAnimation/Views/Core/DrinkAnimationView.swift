//
//  DrinkAnimationView.swift
//  DrinkAnimation
//
//  Created by FayTek on 1/11/25.
//

import SwiftUI

struct DrinkAnimationView: View {
    @EnvironmentObject var viewModel: DrinkViewModel
    
    var body: some View {
        VStack {
            ZStack {
                CupView()
                WaterView(fillLevel: $viewModel.drink.fillLevel, color: viewModel.drink.color)
                    .mask(CupView())
                BubblesView()
                LiquidSplashView()
            }
            .frame(maxWidth: .infinity, maxHeight: 300) // Dynamic frame size
            .animation(.spring(), value: viewModel.drink.fillLevel) // Apply animation here
            
            Slider(value: $viewModel.drink.fillLevel, in: 0...1)
                .padding()
            
            // Use SwiftUI's built-in ColorPicker
            ColorPicker("Drink Color", selection: $viewModel.drink.color)
                .padding()
        }
        .padding()
    }
}
