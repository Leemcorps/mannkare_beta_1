//
//  ProductCard.swift
//  SweaterRecipeApp
//
//  Created by Azhar Bahleem on 01/06/23.
//

import SwiftUI

struct ProductCardOld: View {
    @State var isSelected: Bool = false
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var likeManager: LikeManager
    var product: Product
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            ZStack(alignment: .topTrailing) {
                ZStack(alignment: .bottomTrailing) {
                    Image(product.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(20)
                        .frame(width: 190)
                    
                    
                    
                    HStack {
                        
                        Image(product.brand)
                            .resizable()
                            .frame(width: 40, height: 40)
                            .cornerRadius(50)
                        
                        
                        
                        VStack(alignment: .leading) {
                            
                            
                            Text(product.name)
                                .bold()
                            
                            Text("Rs \(product.price)")
                                .font(.caption)
                            
                            
                        }
                        
                        
                    }.padding()
                        .frame(width: 190, alignment: .leading)
                        .frame(height: 60)
                        .background(.ultraThinMaterial)
                        .cornerRadius(20)
                    
                    
                    
                    
                    
                    
                }.frame(width: 190) //, height: 320)
                
                Button {
                    
                    likeManager.addToLike(product: product)
                    
                    isSelected.toggle()
                    
                } label: {
                    Image(systemName: "heart.fill")
                    
                        .padding(10)
                        .foregroundColor(isSelected ? Color.red : Color.white)
                        .background(.ultraThinMaterial)
                        .cornerRadius(50)
                        .padding()
                }
                
                
            } //z stack
            
            
            
            
            Button {
                
                cartManager.addToCart(product: product)
                
            } label: {
                Image(systemName: "bag.fill")
                
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.ultraThinMaterial)
                    .cornerRadius(50)
                    .padding()
            }
            
            
            
            
        }
        
    }
}

struct ProductCardOld_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardOld(product: productList[1])
            .environmentObject(CartManager())
            .environmentObject(LikeManager())
    }
}
