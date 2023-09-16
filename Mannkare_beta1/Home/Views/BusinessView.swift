//
//  BusinessView.swift
//  SweaterRecipeApp
//
//  Created by Azhar Bahleem on 18/06/23.
//

import SwiftUI

struct BusinessView: View {
    var body: some View {
                
        
        ScrollView {
            
            
         
                
          
                
            
            
            
        }.overlay(
        
        
        
        
        ZStack {
            
            Color.clear.background(.ultraThinMaterial)
            
            
            HStack {
                   
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
        )//overlay
    }
        
}

 
        
    
struct BusinessView_Previews: PreviewProvider {
    static var previews: some View {
        BusinessView()
    }
}

     
