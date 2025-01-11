//
//  GameModeProtocol.swift
//  DrinkAnimation
//
//  Created by FayTek on 1/11/25.
//

import Foundation
protocol GameModeProtocol {
    var id: Int { get }
    var name: String { get }
    var difficulty: Difficulty { get }
}
