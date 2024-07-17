//
//  PoductsView.swift
//  My-Showroom
//
//  Created by İmat Gökaslan on 16.07.2024.
//

import SwiftUI

struct PoductsView: View {
    @EnvironmentObject var cartManager : CartManager
    
    var column = [GridItem(.adaptive(minimum: 160),spacing: 20)]
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: column,spacing: 20){
                    ForEach(productList,id: \.id){product in
                        ProductCardView(product: product)
                        
                    }
                }
                .padding()
            }
            .navigationTitle(Text("All Furniture"))
        }
    }
}

#Preview {
    PoductsView()
        .environmentObject(CartManager())
}
