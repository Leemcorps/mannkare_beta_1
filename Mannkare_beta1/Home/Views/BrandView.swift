//
//  ContentView.swift
//  BrandsFile
//
//  Created by Azhar Bahleem on 07/06/23.
//

import SwiftUI

struct BrandView: View {
    var body: some View {

        ScrollView {
  
                ForEach(productBrandList, id: \.id) {
            
            
                    product in
                     
                        
                        BrandCard(product: product)
   
                }
                .padding(.top, 30)
    
            
        }//scrollview
        .overlay(
            
            
            ZStack {
                
                Color.clear.background(.ultraThinMaterial)
                
                
                      HStack() {
                
                
                          Image("og")
                              .resizable()
                              .frame(width: 120, height: 60)
                              .padding(.horizontal)
                
                
                
                
            
                    Spacer()
                    
       
                        

                }.padding(.vertical, 1)
                
                    
                
            }//.frame(height: 70)
            .frame(maxWidth: .infinity)
            .frame(height: 25)
            .frame(maxHeight: .infinity, alignment: .top)
            
            
        )
        
        
       // .padding(.top, 30)
        
        
        
        
        
    }
}

struct BrandView_Previews: PreviewProvider {
    static var previews: some View {
        BrandView()
    }
}
