//
//  CartButton.swift
//  SweaterRecipeApp
//
//  Created by Azhar Bahleem on 01/06/23.
//

import SwiftUI

struct CartButton: View {
    var numberOfProducts: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            
            Image(systemName: "bag.circle.fill")
           // Image(systemName: "bag.fill")
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

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberOfProducts: 1)
    }
}
