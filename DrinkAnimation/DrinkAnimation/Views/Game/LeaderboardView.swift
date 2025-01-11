//
//  LeaderboardView.swift
//  DrinkAnimation
//
//  Created by FayTek on 1/11/25.
//

import SwiftUI

struct LeaderboardView: View {
    @EnvironmentObject var gameViewModel: GameViewModel
    
    var body: some View {
        VStack {
            Text("Your Score: \(gameViewModel.score)")
            Button("Share Score") {
                if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                   let rootVC = windowScene.windows.first?.rootViewController {
                    ShareManager.shared.shareScore(gameViewModel.score, from: rootVC)
                }
            }
        }
        .navigationTitle("Leaderboard")
    }
}
