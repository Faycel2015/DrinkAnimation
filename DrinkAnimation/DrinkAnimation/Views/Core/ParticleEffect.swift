//
//  ParticleEffect.swift
//  DrinkAnimation
//
//  Created by FayTek on 1/11/25.
//

import Foundation
import SwiftUI

struct ParticleEffect: View {
    var body: some View {
        ZStack {
            ForEach(0..<20) { _ in
                Circle()
                    .fill(Color.white.opacity(0.5))
                    .frame(width: CGFloat.random(in: 2...5), height: CGFloat.random(in: 2...5))
                    .position(x: CGFloat.random(in: 0...200), y: CGFloat.random(in: 0...300))
                    .animation(Animation.easeInOut(duration: Double.random(in: 1...3)).repeatForever(), value: UUID())
            }
        }
    }
}
