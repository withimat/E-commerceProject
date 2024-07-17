//
//  CartView.swift
//  My-Showroom
//
//  Created by İmat Gökaslan on 15.07.2024.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView{
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id){product in
                    cardProductsView(product: product)
                }
                HStack{
                    Text("Your Total is ")
                    Spacer()
                    Text("$\(cartManager.total).00")
                        .bold()
                    
                }
                .padding()
                
                PaymentButton (action: {
                    
                })
                .padding()
                .cornerRadius(15)
                    
                
                
            }else{
                Text("Your Card is Empty..")
            }
            
        }
        .navigationTitle(Text("My Cards"))
        .padding(.top)
    }
}

#Preview {
    CartView()
        .environmentObject(CartManager())
}
