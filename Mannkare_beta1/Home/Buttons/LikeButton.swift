//
//  LikeButton.swift
//  SweaterRecipeApp
//
//  Created by Azhar Bahleem on 02/06/23.
//

import SwiftUI

struct LikeButton: View {
//    @State var isSelected: Bool = false
    var numberOfProducts: Int
    var body: some View {
        
        ZStack(alignment: .topTrailing) {
            
            
            Image(systemName: "heart.circle.fill")
           
                .font(.largeTitle)
                .padding(.top, 5)
                .foregroundColor(Color(.systemGray2))
            
            
                
            
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption)
                    .bold()
                    .frame(width: 15, height: 15)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(50)
            }
        }
        
        
        
        
    }
}

struct LikeButton_Previews: PreviewProvider {
    static var previews: some View {
        LikeButton(numberOfProducts: 1)
    }
}
