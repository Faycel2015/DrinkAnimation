//
//  ShopView.swift
//  DrinkAnimation
//
//  Created by FayTek on 1/11/25.
//

import SwiftUI
import StoreKit

struct ShopView: View {
    @EnvironmentObject var purchaseManager: PurchaseManager
    
    var body: some View {
        List(purchaseManager.products, id: \.productIdentifier) { product in
            VStack(alignment: .leading) {
                Text(product.localizedTitle)
                    .font(.headline)
                Text(product.localizedDescription)
                    .font(.subheadline)
                Button("Buy for \(product.price)") {
                    purchaseManager.purchaseProduct(product)
                }
            }
        }
        .navigationTitle("Shop")
    }
}
