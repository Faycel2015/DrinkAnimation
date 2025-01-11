//
//  CupView.swift
//  DrinkAnimation
//
//  Created by FayTek on 1/11/25.
//

import Foundation
import SwiftUI

struct CupView: View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let width = geometry.size.width
                let height = geometry.size.height
                
                // Cup shape (right side up)
                path.move(to: CGPoint(x: width * 0.1, y: height))
                path.addLine(to: CGPoint(x: width * 0.2, y: height * 0.1))
                path.addLine(to: CGPoint(x: width * 0.8, y: height * 0.1))
                path.addLine(to: CGPoint(x: width * 0.9, y: height))
                path.closeSubpath()
            }
            .stroke(Color.black, lineWidth: 4)
        }
    }
}
