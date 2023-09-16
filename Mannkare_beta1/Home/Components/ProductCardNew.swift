//
//  ProductCardNew.swift
//  Mannkare_beta1
//
//  Created by Azhar Bahleem on 17/09/23.
//

import SwiftUI

struct ProductCard: View {
    @State var isSelected: Bool = false
    @EnvironmentObject var cartManager: CartManager
    @EnvironmentObject var likeManager: LikeManager
    var product: Product
    
    var body: some View {
        
        VStack {
            
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
                .frame(width: 190)
            
            
            
                                HStack {
            
                                    Image(product.brand)
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                        .cornerRadius(50)
            
            
            
                                    VStack(alignment: .leading) {
            
            
                                        Text(product.name)
                                            
                                            .font(.footnote)
                                            .fontWeight(.semibold)
            
                                        Text("Rs \(product.price)")
                                            .font(.footnote)
                                            
            
            
                                    }
            
                                    Spacer()
                                    
                                    
                                    Button {
                                        
                                        likeManager.addToLike(product: product)
                                        
                                        isSelected.toggle()
                                        
                                    } label: {
                                        Image(systemName: "heart.fill")
                                        
                                            //.padding(10)
                                            .foregroundColor(isSelected ? Color.red : Color.gray)

                                    }
                                    
                                    
                                    
                                    
                                    
            
                                }.padding(.horizontal, 5)
                                    .frame(width: 190, alignment: .leading)
                                    .frame(height: 30)
                                   // .background(.ultraThinMaterial)
                                    .cornerRadius(20)
            
            
            
           
            
            
            
            
            
            
            .frame(width: 190) //, height: 320)
            
//            Button {
//
//                likeManager.addToLike(product: product)
//
//                isSelected.toggle()
//
//            } label: {
//                Image(systemName: "heart.fill")
//
//                    .padding(10)
//                    .foregroundColor(isSelected ? Color.red : Color.white)
//                    .background(.ultraThinMaterial)
//                    .cornerRadius(50)
//                    .padding()
//            }
            
            
            
            
            
            
            
//            Button {
//
//                cartManager.addToCart(product: product)
//
//            } label: {
//                Image(systemName: "bag.fill")
//
//                    .padding(10)
//                    .foregroundColor(.white)
//                    .background(.ultraThinMaterial)
//                    .cornerRadius(50)
//                    .padding()
//            }
            
            
            
        }//vstack
        
        
    }
}
            
            
        
struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[1])
            .environmentObject(CartManager())
            .environmentObject(LikeManager())
    }
}
