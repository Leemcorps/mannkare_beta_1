//
//  ProfileView.swift
//  SweaterRecipeApp
//
//  Created by Azhar Bahleem on 18/06/23.
//

import SwiftUI

struct ProfileView: View {
    @State var selection: String = "Orders"
    let filterOptions: [String] = ["Orders", "Purchased", "Account"]
    var body: some View {
        ScrollView {
            
            
            NavigationView {
                VStack {
                    
                    
                    
                    
//                    ZStack {
                        
//                        Rectangle()
//                            .frame(width: .infinity)
//                            .frame(height: 180)
//                            .foregroundColor(.gray.opacity(0.9))
//                            .cornerRadius(10)
                    
                    HStack {
                        
                        
                        VStack {
                            
                            Image(systemName: "person.circle.fill")
                            
                                .resizable()
                                .frame(width: 80, height: 80)
                                .cornerRadius(50)
                                .foregroundColor(.gray.opacity(0.5))
                            
                            Text("Azar Bahleem")
                                .font(.caption)
                            
                        }//vstack
            
                    }//Hstack main
                    .padding()
                    
//                }//z stack
                    
                    
                    Picker(
                        selection: $selection,
                        
                        label: Text("picker"),
                        
                        content: {
                            ForEach(filterOptions.indices,  id: \.self) {
                                index in Text(filterOptions[index])
                                    .tag(filterOptions[index])
                            }
                        }
                        
                        
                    ).pickerStyle(SegmentedPickerStyle())
                    
                    Spacer()
                    
                    
                }// Main V Stack
                .padding(.top, 35)
                
                
                
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
           
            
            
            
        }
        .overlay (
            
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
        
        
        )
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
