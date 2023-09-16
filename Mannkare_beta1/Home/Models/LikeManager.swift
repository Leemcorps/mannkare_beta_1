//
//  LikeManager.swift
//  SweaterRecipeApp
//
//  Created by Azhar Bahleem on 02/06/23.
//

import Foundation

class LikeManager: ObservableObject {
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    
    func addToLike(product: Product) {
        products.append(product)
        total += product.price
    }
    
    
    func removeFromLike(product: Product) {
        products = products.filter {$0.id != product.id}
        total -= product.price
    }
    
    
}
