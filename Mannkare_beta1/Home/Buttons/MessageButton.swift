//
//  MessageButton.swift
//  Mannkare_beta1
//
//  Created by Azhar Bahleem on 10/09/23.
//

import SwiftUI

struct MessageButton: View {
    var numberOfMessages: Int
    
    
    var body: some View {
        
        
        
        ZStack(alignment: .topTrailing) {
            
            
            
            Image(systemName: "paperplane.circle.fill")

                .font(.largeTitle)
                .padding(.top, 5)
                .foregroundColor(Color(.systemGray2))
            
            
                
            
            if numberOfMessages > 0 {
                Text("\(numberOfMessages)")
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

struct MessageButton_Previews: PreviewProvider {
    static var previews: some View {
        MessageButton(numberOfMessages: 2)
    }
}
