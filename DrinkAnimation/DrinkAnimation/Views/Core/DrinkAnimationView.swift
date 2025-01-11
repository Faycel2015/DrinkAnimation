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
                WaterView(fillLevel: .constant(CGFloat(viewModel.drink.fillLevel)), color: viewModel.drink.color)
                    .mask(CupView())
                BubblesView()
                LiquidSplashView()
            }
            .frame(width: 200, height: 300)
            .transition(.scale)
            
            Slider(value: $viewModel.drink.fillLevel, in: 0...1)
                .padding()
            
            ColorPickerView(selectedColor: $viewModel.drink.color)
                .padding()
        }
        .padding()
        .animation(.spring(), value: viewModel.drink.fillLevel)
    }
}
