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
    @Published var achievements: [Achievement] = []
    
    init() {
        loadLevels()
        loadAchievements()
    }
    
    private func loadLevels() {
        // Load levels from a data source (e.g., JSON, API)
        currentLevel = Level(id: 1, requiredScore: 100, timeLimit: 60, reward: 50)
    }
    
    private func loadAchievements() {
        // Load achievements from a data source
        achievements = [
            Achievement(id: 1, title: "First Drink", description: "Complete your first drink", isUnlocked: false),
            Achievement(id: 2, title: "Master Mixer", description: "Mix 10 drinks", isUnlocked: false)
        ]
    }
    
    func addScore(_ points: Int) {
        score += points
        checkAchievements()
    }
    
    func usePowerUp(_ powerUp: PowerUp) {
        if let index = powerUps.firstIndex(where: { $0.id == powerUp.id }) {
            powerUps.remove(at: index)
            // Apply power-up effect (e.g., double points for 10 seconds)
        }
    }
    
    private func checkAchievements() {
        for index in achievements.indices {
            if !achievements[index].isUnlocked {
                switch achievements[index].id {
                case 1:
                    if score >= 10 {
                        achievements[index].isUnlocked = true
                    }
                case 2:
                    if score >= 100 {
                        achievements[index].isUnlocked = true
                    }
                default:
                    break
                }
            }
        }
    }
}
