//
//  LeaderboardView.swift
//  DrinkAnimation
//
//  Created by FayTek on 1/11/25.
//

import Foundation
import SwiftUI

struct LeaderboardView: View {
    @EnvironmentObject var gameViewModel: GameViewModel
    
    var body: some View {
        VStack {
            Text("Your Score: \(gameViewModel.score)")
            Button("Share Score") {
                if let rootVC = UIApplication.shared.windows.first?.rootViewController {
                    ShareManager.shared.shareScore(gameViewModel.score, from: rootVC)
                }
            }
        }
        .navigationTitle("Leaderboard")
    }
}
