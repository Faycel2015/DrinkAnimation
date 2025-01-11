//
//  ShopView.swift
//  DrinkAnimation
//
//  Created by FayTek on 1/11/25.
//

import Foundation
import SwiftUI

struct ShopView: View {
    @EnvironmentObject var gameViewModel: GameViewModel
    
    var body: some View {
        List(gameViewModel.powerUps) { powerUp in
            VStack(alignment: .leading) {
                Text(powerUp.name)
                    .font(.headline)
                Text(powerUp.effect)
                    .font(.subheadline)
            }
        }
        .navigationTitle("Shop")
    }
}
