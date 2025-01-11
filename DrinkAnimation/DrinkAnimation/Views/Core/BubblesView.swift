//
//  BubblesView.swift
//  DrinkAnimation
//
//  Created by FayTek on 1/11/25.
//

import Foundation
import SwiftUI

struct BubblesView: View {
    @State private var bubbles: [Bubble] = []
    
    struct Bubble: Identifiable {
        let id = UUID()
        var position: CGPoint
        var scale: CGFloat
    }
    
    var body: some View {
        GeometryReader { geometry in
            ForEach(bubbles) { bubble in
                Circle()
                    .fill(Color.white.opacity(0.5))
                    .frame(width: 10, height: 10)
                    .scaleEffect(bubble.scale)
                    .position(bubble.position)
            }
        }
        .onAppear {
            startBubbleAnimation()
        }
    }
    
    private func startBubbleAnimation() {
        Timer.scheduledTimer(withTimeInterval: 0.3, repeats: true) { _ in
            withAnimation {
                createBubble()
            }
        }
    }
    
    private func createBubble() {
        let bubble = Bubble(
            position: CGPoint(x: CGFloat.random(in: 50...300),
                            y: 400),
            scale: CGFloat.random(in: 0.5...1.5)
        )
        bubbles.append(bubble)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            bubbles.removeAll { $0.id == bubble.id }
        }
    }
}
