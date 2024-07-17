//
//  HomePageView.swift
//  My-Showroom
//
//  Created by İmat Gökaslan on 15.07.2024.
//

import SwiftUI

struct HomePageView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top){
                    Color.white
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack{
                        AppBar()
                        
                        SearchView()
                        
                        ImageSliderView()
                        
                        HStack{
                            Text("New Rivals")
                                .font(.title2)
                                .fontWeight(.medium)
                                
                            Spacer()
                            NavigationLink {
                                PoductsView()
                            } label: {
                                Image(systemName: "circle.grid.2x2.fill")
                                    .foregroundColor(Color("kPrimary"))
                            }

                            
                            
                        }.padding()
                        
                        
                        ScrollView(.horizontal,showsIndicators: false){
                            HStack(spacing: 10){
                                ForEach(productList,id: \.id){ product in
                                    NavigationLink {
                                        ProductDetailsView(product: product)
                                    } label: {
                                        ProductCardView(product: product)
                                            .environmentObject(cartManager)
                                        
                                    }
                                }
                            }
                            .padding(.horizontal)
                        }
                        
                    }
                    
            }.padding(.bottom,10)
        }
        
    }
}

#Preview {
    HomePageView()
        .environmentObject(CartManager())
}

struct AppBar: View {
    @EnvironmentObject var cartManager : CartManager
    var body: some View {
        NavigationStack {
            VStack (alignment: .leading){
                HStack{
                    Image(systemName: "location.north.fill")
                        .resizable()
                        .frame(width: 20,height: 20)
                        .padding(.trailing)
                    Text("İstanbul,Türkiye")
                        .font(.title2)
                        .foregroundStyle(.gray)
                    
                    Spacer()
                
                    
                }
                Text("Find the Most \nLuxurios")
                    .font(.largeTitle .bold())
                + Text("Furniture")
                    .font(.largeTitle .bold())
                    .foregroundColor(Color("kPrimary"))
            }
        }
        .padding()
        
        .environmentObject(cartManager)
    }
}
