//
//  ProductDetailsView.swift
//  My-Showroom
//
//  Created by İmat Gökaslan on 16.07.2024.
//

import SwiftUI

struct ProductDetailsView: View {
    var product : Product
    var body: some View {
        ScrollView{
            ZStack{
                Color.white
                
                VStack(alignment:.leading){
                    ZStack(alignment: .topTrailing){
                        Image(product.image)
                            .resizable()
                            .ignoresSafeArea(edges: .top)
                            .frame(height: 350)
                            
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 25,height: 25)
                            .padding(.top,63)
                            .padding(.trailing,20)
                    }
                    VStack(alignment:.leading){
                        HStack{
                            Text(product.name)
                                .font(.title2 .bold())
                            
                            Spacer()
                             
                            Text("$ \(product.price)")
                                .font(.title2 )
                                .fontWeight(.semibold)
                                .padding(.horizontal)
                                .background(Color("kSecondary"))
                                .cornerRadius(15)
                        }.padding(.vertical)
                        
                        HStack {
                            HStack(spacing:3){
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 20,height: 20)
                                    .foregroundColor(.yellow)
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 20,height: 20)
                                    .foregroundColor(.yellow)
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 20,height: 20)
                                    .foregroundColor(.yellow)
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 20,height: 20)
                                    .foregroundColor(.yellow)
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 20,height: 20)
                                    .foregroundColor(.black)
                                
                                Text("(4.6)")
                                    .foregroundColor(.gray)
                            }
                            .padding(.vertical)
                            Spacer()
                            HStack{
                                Button(action: {
                                    
                                }, label: {
                                    Image(systemName: "minus.square")
                                    
                                })
                                Text("1")
                                Button(action: {
                                    
                                }, label: {
                                    Image(systemName: "plus.square.fill")
                                        .foregroundColor(Color("kPrimary"))
                                    
                                })
                            }
                        }
                        
                        
                        Text("Descp")
                            .font(.title3)
                            .fontWeight(.medium)
                        Text(product.description)
                        
                        HStack(alignment: .top){
                            VStack(alignment:.leading){
                                Text("Size")
                                    .font(.system(size: 18))
                                    .fontWeight(.semibold)
                                    
                                Text("Height: \(product.height)")
                                    .foregroundStyle(.gray)
                                Text("Weight: \(product.width)")
                                    .foregroundStyle(.gray)
                                Text("Diameter: \(product.diameter)")
                                    .foregroundStyle(.gray)
                            }
                            .frame(maxWidth: .infinity,alignment: .leading)
                            .padding()
                            Spacer()
                            VStack(alignment: .trailing){
                                Text("Colors")
                                    .font(.system(size: 18))
                                    .fontWeight(.semibold)
                                
                                HStack {
                                    Text("Blue")
                                        .foregroundStyle(.gray)
                                    Circle()
                                        .frame(width: 20)
                                        .foregroundColor(.blue)
                                }
                                HStack {
                                    Text("Yellow")
                                        .foregroundStyle(.gray)
                                    Circle()
                                        .frame(width: 20)
                                        .foregroundColor(.yellow)
                                }
                                HStack {
                                    Text("Red")
                                        .foregroundStyle(.gray)
                                    Circle()
                                        .frame(width: 20)
                                        .foregroundColor(.red)
                                }
                            }.padding(.trailing)
                            
                            
                            
                            
                            
                        }
                        PaymentButton {

}
                        .frame(height: 35)
                        .padding(.horizontal)
                       
                    }
                    
                }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ProductDetailsView(product: productList[4])
}

