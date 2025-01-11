//
//  Achievement.swift
//  DrinkAnimation
//
//  Created by FayTek on 1/11/25.
//

import Foundation
import SwiftUI

struct Achievement: Identifiable { // Conform to Identifiable
    let id: Int
    let title: String
    let description: String
    var isUnlocked: Bool
}
