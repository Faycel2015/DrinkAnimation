//
//  Level.swift
//  DrinkAnimation
//
//  Created by FayTek on 1/11/25.
//

import Foundation
import SwiftUI

struct Level {
    let id: Int
    let requiredScore: Int
    let timeLimit: Int // in seconds
    let reward: Int // coins or points
}
