//
//  MultiplayerManager.swift
//  DrinkAnimation
//
//  Created by FayTek on 1/11/25.
//

import Foundation
import GameKit

class MultiplayerManager: NSObject, ObservableObject, GKMatchmakerViewControllerDelegate {
    @Published var isMatchmaking = false
    @Published var match: GKMatch?
    
    func startMatchmaking() {
        let request = GKMatchRequest()
        request.minPlayers = 2
        request.maxPlayers = 4
        
        if let matchmakerVC = GKMatchmakerViewController(matchRequest: request) {
            matchmakerVC.matchmakerDelegate = self
            // Present the matchmaker view controller
            isMatchmaking = true
        }
    }
    
    func matchmakerViewController(_ viewController: GKMatchmakerViewController, didFind match: GKMatch) {
        self.match = match
        isMatchmaking = false
        // Handle the match (e.g., start the game)
    }
    
    func matchmakerViewControllerWasCancelled(_ viewController: GKMatchmakerViewController) {
        isMatchmaking = false
    }
    
    func matchmakerViewController(_ viewController: GKMatchmakerViewController, didFailWithError error: Error) {
        isMatchmaking = false
        print("Matchmaking failed: \(error.localizedDescription)")
    }
}
