//
//  HomeView.swift
//  SweaterRecipeApp
//
//  Created by Azhar Bahleem on 06/06/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var cartManager = CartManager()
    @StateObject var likeManager = LikeManager()
    var columns = [GridItem(.adaptive(minimum: 200),spacing: -10)]
    var body: some View {

        
        NavigationView {
            ScrollView {
                
              LazyVGrid(columns: columns, spacing: 15){
                    
                 
                
                    ForEach(productList, id: \.id) {
                        product in
                        NavigationLink(destination: ProductView(product: product)) {
                            
                            ProductCard(product: product)
                                .environmentObject(cartManager)
                                .environmentObject(likeManager)
                            
                        }
                        
                        
                    }
                    
              }.padding(.top, 50)
                
       
                
                
            }//scrollview
            .overlay(
                
                
                ZStack {
                    
                    Color.clear.background(.ultraThinMaterial)
                    
                    
                          HStack {
                    
                    
                              Image("og")
                                  .resizable()
                                  .frame(width: 120, height: 60)
                                  .padding(.horizontal)
                    
                    
                    
                    
                
                        Spacer()
                        
                              NavigationLink {
                                  
                                  CartView()
                                      .environmentObject(cartManager)
                                  
                              } label: {
                                  CartButton(numberOfProducts: cartManager.products.count)
                                   // .padding()
                                      .foregroundColor(.black)
                              }
                                
                            
                              NavigationLink {
                                  
                                  LikesView()
                                      .environmentObject(likeManager)
                                  
                              } label: {
                                  LikeButton(numberOfProducts: likeManager.products.count)
                                      .padding(.horizontal)
                                      .foregroundColor(.pink)
                              }
           
                    }.padding(.vertical, 1)
                    
                        
                    
                }//.frame(height: 70)
                .frame(maxWidth: .infinity)
                .frame(height: 25)
                .frame(maxHeight: .infinity, alignment: .top)
                
                
            )
            
        }//nav view
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
