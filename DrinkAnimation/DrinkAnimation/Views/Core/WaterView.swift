//
//  WaterView.swift
//  DrinkAnimation
//
//  Created by FayTek on 1/11/25.
//

import Foundation
import SwiftUI

struct WaterView: View {
    @Binding var fillLevel: Double // Change to Double
    var color: Color
    
    var body: some View {
        GeometryReader { geometry in
            Wave(progress: fillLevel)
                .fill(color)
                .mask(
                    Rectangle()
                        .frame(height: geometry.size.height * CGFloat(fillLevel))
                        .frame(maxHeight: .infinity, alignment: .bottom)
                        .animation(.easeInOut, value: fillLevel)
                )
        }
    }
}

struct Wave: Shape {
    var progress: CGFloat
    var animatableData: CGFloat {
        get { progress }
        set { progress = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.width
        let height = rect.height
        
        path.move(to: CGPoint(x: 0, y: height))
        
        for x in stride(from: 0, through: width, by: 1) {
            let relativeX = x / width
            let sine = sin(relativeX * .pi * 4 + progress * .pi * 2)
            let y = sine * 5 + height * 0.5
            path.addLine(to: CGPoint(x: x, y: y))
        }
        
        path.addLine(to: CGPoint(x: width, y: height))
        path.closeSubpath()
        
        return path
    }
}
