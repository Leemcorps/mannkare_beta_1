//
//  Bar.swift
//  SweaterRecipeApp
//
//  Created by Azhar Bahleem on 03/06/23.
//

import SwiftUI

struct Bar: View {
    private var listOfBrands = brandList
    @State var searchText = ""
    var columns = [GridItem(.adaptive(minimum: 200),spacing: 1)]
    
    
    
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                LazyVGrid(columns: columns, spacing: 15) {
                    ForEach(brands, id: \.self) {brand in
                        
                        ZStack{
                            Rectangle()
                                .frame(width: 200, height: 90)
                                .foregroundColor(.brown.opacity(0.9))
                                .cornerRadius(20)
                            Text(brand.capitalized)
                                .foregroundColor(.white)
                                .font(.headline)
                                .bold()
                        }//Zstack
                        
                    }
                    
                    
                }//vstack
                .searchable(text: $searchText)
               
            }
        } //nav view
        
        
    }
    
    var brands: [String] {
        let lcBrands = listOfBrands.map { $0.lowercased() }
        
        return searchText == "" ? lcBrands : lcBrands.filter {
            $0.contains(searchText.lowercased())
        }
    }
}






struct Bar_Previews: PreviewProvider {
    static var previews: some View {
        Bar()
    }
}
