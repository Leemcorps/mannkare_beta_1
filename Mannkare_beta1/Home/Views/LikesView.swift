//
//  LikesView.swift
//  SweaterRecipeApp
//
//  Created by Azhar Bahleem on 02/06/23.
//

import SwiftUI

struct LikesView: View {
    @EnvironmentObject var likeManager: LikeManager
    var body: some View {
       
        
        
        
        
        
        
        
        ScrollView {
            
            if likeManager.products.count > 0 {
                ForEach(likeManager.products, id: \.id) {
                    product in
                    LikeRow(product: product)
                }
                

                
                
                
            } else {
                
                Text("You haven't liked anything yet..")
            }
            
            
            
            
        }
            .navigationTitle(Text("My Likes"))
            .padding(.top)
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
}

struct LikesView_Previews: PreviewProvider {
    static var previews: some View {
        LikesView()
            .environmentObject(LikeManager())
    }
}
