//
//  PowerUp.swift
//  DrinkAnimation
//
//  Created by FayTek on 1/11/25.
//

import Foundation
import SwiftUI

struct PowerUp: Identifiable {
    let id: Int
    let name: String
    let effect: String
    let duration: Int // in seconds
    let rarity: Rarity
}

enum Rarity: String, CaseIterable {
    case common, rare, epic, legendary
}
