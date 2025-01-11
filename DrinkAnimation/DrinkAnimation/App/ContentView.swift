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
                Text(NSLocalizedString("welcome_message", value: "Welcome to Drink Animation!", comment: ""))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.top, 40)
                
                Spacer()
                
                // Play Button
                NavigationLink(destination: DrinkAnimationView()) {
                    Text(NSLocalizedString("play_button", value: "Play", comment: ""))
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                // Shop Button
                NavigationLink(destination: ShopView()) {
                    Text(NSLocalizedString("shop_button", value: "Shop", comment: ""))
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                // Leaderboard Button
                NavigationLink(destination: LeaderboardView()) {
                    Text(NSLocalizedString("leaderboard_button", value: "Leaderboard", comment: ""))
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                // Achievements Button
                NavigationLink(destination: AchievementsView()) {
                    Text(NSLocalizedString("achievements_button", value: "Achievements", comment: ""))
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Spacer()
                
                // Display Current Score
                Text("Your Score: \(0)")
                    .font(.headline)
                    .padding(.bottom, 20)
            }
            .padding()
            .navigationTitle("Drink Animation")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(GameViewModel())
            .environmentObject(PurchaseManager())
    }
}
