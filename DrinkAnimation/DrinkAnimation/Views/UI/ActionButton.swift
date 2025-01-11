//
//  ActionButton.swift
//  DrinkAnimation
//
//  Created by FayTek on 1/11/25.
//

import SwiftUI

struct ActionButton: View {
    let title: String
    let backgroundColor: Color
    let isDisabled: Bool
    let action: () -> Void
    
    init(title: String, backgroundColor: Color = .blue, isDisabled: Bool = false, action: @escaping () -> Void) {
        self.title = title
        self.backgroundColor = backgroundColor
        self.isDisabled = isDisabled
        self.action = action
    }
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .padding()
                .frame(maxWidth: .infinity)
                .background(isDisabled ? Color.gray : backgroundColor)
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(color: isDisabled ? Color.clear : backgroundColor.opacity(0.3), radius: 5, x: 0, y: 5)
        }
        .disabled(isDisabled)
    }
}

struct ActionButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 20) {
            ActionButton(title: "Play") {
                print("Play button tapped!")
            }
            
            ActionButton(title: "Shop", backgroundColor: .green) {
                print("Shop button tapped!")
            }
            
            ActionButton(title: "Reset", backgroundColor: .red, isDisabled: true) {
                print("Reset button tapped!")
            }
        }
        .padding()
    }
}
