//
//  AchievementCard.swift
//  DrinkAnimation
//
//  Created by FayTek on 1/11/25.
//

import Foundation
import SwiftUI

struct AchievementCard: View {
    let achievement: Achievement
    
    var body: some View {
        HStack {
            Image(systemName: achievement.isUnlocked ? "star.fill" : "star")
                .foregroundColor(achievement.isUnlocked ? .yellow : .gray)
            VStack(alignment: .leading) {
                Text(achievement.title)
                    .font(.headline)
                Text(achievement.description)
                    .font(.subheadline)
            }
        }
    }
}
