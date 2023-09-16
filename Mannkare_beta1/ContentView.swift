//
//  ContentView.swift
//  SweaterRecipeApp
//
//  Created by Azhar Bahleem on 01/06/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {

        TabView {
            HomeView()
                .tabItem {
                 
                    Image(systemName: "house.fill")
                    Text("Home")
    
                }
            Bar()
                .tabItem {
                 
                    Image(systemName: "magnifyingglass")
                    
                    Text("Search")
    
                }
            
            
            BrandView()
                .tabItem {
                    Image(systemName: "menucard.fill")
                    Text("Brands")
    
                }
            
            BusinessView()
                .tabItem {
                    Image(systemName: "dollarsign.arrow.circlepath")
                    Text("Sell")
                }
            
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.and.background.dotted")
                   
                    Text("Profile")
                }
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
