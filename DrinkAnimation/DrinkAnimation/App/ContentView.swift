//
//  ContentView.swift
//  DrinkAnimation
//
//  Created by FayTek on 1/11/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var drinkViewModel = DrinkViewModel()
    @EnvironmentObject var gameViewModel: GameViewModel
    @EnvironmentObject var purchaseManager: PurchaseManager
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                // Welcome Message
                Text(NSLocalizedString("welcome_message", comment: ""))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.top, 40)
                
                Spacer()
                
                // Play Button
                NavigationLink(destination: DrinkAnimationView()) {
                    ActionButton(title: NSLocalizedString("play_button", comment: "")) {
                        // Define the action for the Play button
                        print("Play button tapped!")
                    }
                
                // Shop Button
                NavigationLink(destination: ShopView()) {
                    ActionButton(title: "Shop", action: () -> Void)
                }
                
                // Leaderboard Button
                NavigationLink(destination: LeaderboardView()) {
                    ActionButton(title: "Leaderboard")
                }
                
                // Achievements Button
                NavigationLink(destination: AchievementsView()) {
                    ActionButton(title: "Achievements")
                }
                
                Spacer()
                
                // Display Current Score
                Text("Your Score: \(gameViewModel.score)")
                    .font(.headline)
                    .padding(.bottom, 20)
            }
            .padding()
            .navigationTitle("Drink Animation")
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color.blue.opacity(0.2), Color.purple.opacity(0.2)]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .edgesIgnoringSafeArea(.all)
            )
        }
        .environmentObject(drinkViewModel) // Inject DrinkViewModel
    }
}

#Preview {
    ContentView()
        .environmentObject(GameViewModel()) // Provide GameViewModel for preview
        .environmentObject(PurchaseManager()) // Provide PurchaseManager for preview
}
