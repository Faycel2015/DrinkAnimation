//
//  ColorPickerView.swift
//  DrinkAnimation
//
//  Created by FayTek on 1/11/25.
//

import Foundation
import SwiftUI

struct ColorPickerView: View {
    @Binding var selectedColor: Color
    
    let colors: [Color] = [.red, .green, .blue, .yellow, .purple]
    
    var body: some View {
        HStack {
            ForEach(colors, id: \.self) { color in
                Circle()
                    .fill(color)
                    .frame(width: 30, height: 30)
                    .onTapGesture {
                        selectedColor = color
                    }
                    .overlay(
                        Circle()
                            .stroke(Color.white, lineWidth: selectedColor == color ? 3 : 0)
                    )
            }
        }
    }
}
