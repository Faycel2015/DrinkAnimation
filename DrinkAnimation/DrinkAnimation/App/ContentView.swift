//
//  ContentView.swift
//  DrinkAnimation
//
//  Created by FayTek on 1/11/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = DrinkViewModel()
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.1)
                .ignoresSafeArea()
            
            VStack {
                ZStack {
                    CupView()
                        .frame(width: 200, height: 300)
                    
                    WaterView(fillLevel: $viewModel.fillLevel, color: viewModel.color)
                        .frame(width: 180, height: 280)
                        .offset(y: 10)
                }
                
                HStack(spacing: 20) {
                    Button("Start") {
                        viewModel.startDrinking()
                    }
                    .buttonStyle(.bordered)
                    
                    Button("Reset") {
                        viewModel.reset()
                    }
                    .buttonStyle(.bordered)
                    
                    ColorPicker("Color", selection: $viewModel.color)
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
