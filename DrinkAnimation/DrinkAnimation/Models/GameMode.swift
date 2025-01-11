//
//  GameMode.swift
//  DrinkAnimation
//
//  Created by FayTek on 1/11/25.
//

import Foundation
import SwiftUI
import SwiftUICore

struct GameMode {
    let id: Int
    let name: String
    let difficulty: Difficulty
}

enum Difficulty: String, CaseIterable {
    case easy, medium, hard
}
