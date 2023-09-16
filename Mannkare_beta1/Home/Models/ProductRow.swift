//
//  ProductRow.swift
//  SweaterRecipeApp
//
//  Created by Azhar Bahleem on 02/06/23.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        HStack(spacing: 20) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .cornerRadius(20)
            
            
            VStack(alignment: .leading, spacing: 10) {
                Text(product.name)
                    .bold()
                
                //Spacer()
                
                Text("Rs \(product.price)")
                    .font(.caption)
                    .bold()
                
            }
            
            Spacer()
            
            
          
            Image(systemName: "minus.circle.fill")
                .font(.largeTitle)
                .foregroundColor(.red)
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
            
            
            
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productList[2])
            .environmentObject(CartManager())
    }
}
