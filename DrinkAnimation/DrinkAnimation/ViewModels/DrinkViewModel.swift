//
//  DrinkViewModel.swift
//  DrinkAnimation
//
//  Created by FayTek on 1/11/25.
//

import Foundation
import SwiftUI

class DrinkViewModel: ObservableObject {
    @Published var fillLevel: CGFloat = 0
    @Published var isAnimating = false
    @Published var color: Color = .blue
    
    func startDrinking() {
        withAnimation(.easeInOut(duration: 2)) {
            fillLevel = 1
            isAnimating = true
        }
    }
    
    func reset() {
        withAnimation(.easeInOut(duration: 0.5)) {
            fillLevel = 0
            isAnimating = false
        }
    }
}
