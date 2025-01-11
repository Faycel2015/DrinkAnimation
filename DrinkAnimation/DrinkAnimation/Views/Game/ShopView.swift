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
        List(purchaseManager.products, id: \.id) { product in
            VStack(alignment: .leading) {
                Text(product.displayName)
                    .font(.headline)
                Text(product.description)
                    .font(.subheadline)
                Button("Buy for \(product.displayPrice)") {
                    purchaseManager.purchaseProduct(product)
                }
            }
        }
        .navigationTitle("Shop")
    }
}
