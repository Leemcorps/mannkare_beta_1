//
//  Brands.swift
//  BrandsFile
//
//  Created by Azhar Bahleem on 07/06/23.
//

import SwiftUI

struct BrandCard: View {
var product: ProductSample
    var body: some View {
        
        ZStack {
        
            Rectangle()
                .frame(height: 430)
                .foregroundColor(.gray.opacity(0.1))
                .cornerRadius(20)
            
        ZStack {
            
            VStack {
                HStack {
                    HStack {
                        Image(product.brandLogo)
                            .resizable()
                            .frame(width: 40, height: 40)
                            .cornerRadius(50)
                        
                        
                        
                        
                        Text("\(product.name)")
                            .font(.body)
                        //.foregroundColor(.black)
                            .bold()
                    }.padding(8)
                    
                    Spacer()
                    
                    
                    HStack {
                        Text("\(product.followers) Followers")
                            .font(.caption)
                        
                        
                        
                        
                        
                        Button(action: {
                            
                        }, label: {
                            
                            ZStack{
                                
                                Rectangle()
                                    .frame(width: 70, height: 35)
                                    .cornerRadius(15)
                                    .foregroundColor(.red)
                                
                                Text("Follow")
                                    .font(.caption)
                                    .foregroundColor(.white)
                                    .bold()
                            }
                            
                        })
                        
                    }.padding(8)
                }
                
                // Product view starts (HStack)
                
                HStack {
                    Image(product.product1)
                        .resizable()
                        .frame(width: 125, height: 170)
                        .cornerRadius(15)
                    
                    // Spacer()
                    
                    Image(product.product2)
                        .resizable()
                        .frame(width: 125, height: 170)
                        .cornerRadius(15)
                    
                    //Spacer()
                    
                    Image(product.product3)
                        .resizable()
                        .frame(width: 125, height: 170)
                        .cornerRadius(15)
                }.padding(.horizontal, 8)
                
                
                HStack {
                    Image(product.product4)
                        .resizable()
                        .frame(width: 125, height: 170)
                        .cornerRadius(15)
                    
                    // Spacer()
                    
                    Image(product.product5)
                        .resizable()
                        .frame(width: 125, height: 170)
                        .cornerRadius(15)
                    
                    //Spacer()
                    
                    Image(product.product6)
                        .resizable()
                        .frame(width: 125, height: 170)
                        .cornerRadius(15)
                }.padding(.horizontal,6)
                
                
                //Product view ends
            }.padding(.horizontal, 6)
        }
        
    }//Zstack top

                  
 }
 }
            
            struct BrandCard_Previews: PreviewProvider {
                static var previews: some View {
                    BrandCard(product: productBrandList[0])
                }
            }



                
