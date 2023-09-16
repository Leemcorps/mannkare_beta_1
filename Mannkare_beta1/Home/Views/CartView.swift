//
//  CartView.swift
//  SweaterRecipeApp
//
//  Created by Azhar Bahleem on 01/06/23.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        
        
        
        ScrollView {
            
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id) {
                    product in
                    ProductRow(product: product)
                }
                
                HStack {
                    Text("Your bag total is")
                    
                    Spacer()
                    
                    Text("Rs \(cartManager.total)")
                        .bold()
                }
                .padding()
                
                
                
            } else {
                
                Text("Go explore and come back here..")
            }
            
            
            
            
        }
            .navigationTitle(Text("My Bag"))
            .padding(.top)
        
        
        
        
    }
    
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
