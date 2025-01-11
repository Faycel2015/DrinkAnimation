//
//  DrinkViewModel.swift
//  DrinkAnimation
//
//  Created by FayTek on 1/11/25.
//

import Foundation
import SwiftUI

class DrinkViewModel: ObservableObject {
    @Published var drink = Drink(fillLevel: 0.5, temperature: 0.3, color: .blue)
    @Published var fillLevel: CGFloat = 0
    @Published var isAnimating = false
    @Published var color: Color = .blue
    
    func startDrinking() {
        withAnimation(.easeInOut(duration: 2)) {
            fillLevel = 1
            isAnimating = true
        }
        SoundManager.shared.playSound("fill")
        SoundManager.shared.playSound("bubbles", loop: true) // Play bubble sound
        
        // Stop the sounds after 2 seconds (animation duration)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            SoundManager.shared.stopSound("fill")
            SoundManager.shared.stopSound("bubbles")
        }
    }
    
    func reset() {
        withAnimation(.easeInOut(duration: 0.5)) {
            fillLevel = 0
            isAnimating = false
        }
        SoundManager.shared.playSound("reset")
    }
    
    func updateFillLevel(_ value: Double) {
        drink.fillLevel = max(0, min(1, value))
    }
    
    func updateTemperature(_ value: Double) {
        drink.temperature = max(0, min(1, value))
    }
    
    func updateColor(_ color: Color) {
        drink.color = color
    }
}
