//
//  CartButton.swift
//  My-Showroom
//
//  Created by İmat Gökaslan on 15.07.2024.
//

import SwiftUI

struct CartButton: View {
    var numeberOfProducts: Int
    var body: some View {
        ZStack(alignment: .topTrailing){
           Image(systemName: "bag.fill")
                .padding(5)
            if numeberOfProducts > 0 {
                Text("\(numeberOfProducts)")
                    .font(.caption2)
                    .foregroundColor(.white)
                    .frame(width: 15,height: 15)
                    .background(.green)
                    .cornerRadius(50)
            }
        }
    }
}

#Preview {
    CartButton(numeberOfProducts: 1)
}
