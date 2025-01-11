//
//  GameViewModel.swift
//  DrinkAnimation
//
//  Created by FayTek on 1/11/25.
//

import Foundation
import SwiftUI

class GameViewModel: ObservableObject {
    @Published var score: Int = 0
    @Published var currentLevel: Level?
    @Published var powerUps: [PowerUp] = []
    
    init() {
        loadLevels()
    }
    
    private func loadLevels() {
        // Load levels from a data source (e.g., JSON, API)
        currentLevel = Level(id: 1, requiredScore: 100, timeLimit: 60, reward: 50)
    }
    
    func addPowerUp(_ powerUp: PowerUp) {
        powerUps.append(powerUp)
    }
}
