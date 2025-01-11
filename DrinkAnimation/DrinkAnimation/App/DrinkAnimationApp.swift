//
//  DrinkAnimationApp.swift
//  DrinkAnimation
//
//  Created by FayTek on 1/11/25.
//

import SwiftUI

@main
struct DrinkAnimationApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(DrinkViewModel())
                .environmentObject(GameViewModel())
        }
    }
}
