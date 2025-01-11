//
//  AchievementsView.swift
//  DrinkAnimation
//
//  Created by FayTek on 1/11/25.
//

import SwiftUI

struct AchievementsView: View {
    @EnvironmentObject var gameViewModel: GameViewModel
    
    var body: some View {
        List(gameViewModel.achievements) { achievement in
            AchievementCard(achievement: achievement)
        }
        .navigationTitle("Achievements")
    }
}
