//
//  LiquidSplashView.swift
//  DrinkAnimation
//
//  Created by FayTek on 1/11/25.
//

import Foundation
import SwiftUI

struct LiquidSplashView: View {
    var body: some View {
        Circle()
            .fill(Color.blue.opacity(0.5))
            .frame(width: 50, height: 50)
            .scaleEffect(2)
            .animation(.easeInOut(duration: 0.5), value: UUID())
    }
}
