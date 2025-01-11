//
//  PurchaseManager.swift
//  DrinkAnimation
//
//  Created by FayTek on 1/11/25.
//

import StoreKit

@MainActor
class PurchaseManager: ObservableObject {
    @Published var products: [Product] = []
    @Published var purchasedProductIDs: Set<String> = []
    
    init() {
        Task {
            await fetchProducts()
        }
    }
    
    func fetchProducts() async {
        do {
            let products = try await Product.products(for: ["com.yourapp.powerup1", "com.yourapp.powerup2"])
            self.products = products
        } catch {
            print("Failed to fetch products: \(error)")
        }
    }
    
    func purchaseProduct(_ product: Product) {
        Task {
            do {
                let result = try await product.purchase()
                switch result {
                case .success(let verification):
                    if case .verified(let transaction) = verification {
                        self.purchasedProductIDs.insert(transaction.productID)
                        await transaction.finish()
                    }
                case .pending, .userCancelled:
                    break
                @unknown default:
                    break
                }
            } catch {
                print("Failed to purchase product: \(error)")
            }
        }
    }
}
