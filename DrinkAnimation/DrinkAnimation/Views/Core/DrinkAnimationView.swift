//
//  DrinkAnimationView.swift
//  DrinkAnimation
//
//  Created by FayTek on 1/11/25.
//

import Foundation
import SwiftUI

struct DrinkAnimationView: View {
    @EnvironmentObject var viewModel: DrinkViewModel
    
    var body: some View {
        VStack {
            ZStack {
                CupView()
                WaterView(fillLevel: $viewModel.drink.fillLevel, color: viewModel.drink.color)
                    .mask(CupView()) // Use the cup as a mask
            }
            .frame(width: 200, height: 300)
            
            Slider(value: $viewModel.drink.fillLevel, in: 0...1)
                .padding()
            
            ColorPicker("Drink Color", selection: $viewModel.drink.color)
                .padding()
        }
        .padding()
    }
}
