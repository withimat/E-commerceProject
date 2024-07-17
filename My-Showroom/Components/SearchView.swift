//
//  SearchView.swift
//  My-Showroom
//
//  Created by İmat Gökaslan on 15.07.2024.
//

import SwiftUI

struct SearchView: View {
    @State private var search: String = ""
    var body: some View {
        HStack{
            HStack{
              Image(systemName: "magnifyingglass")
                    .padding(.leading)
                TextField(text: $search) {
                    Text("Search for Furniture")
                }.padding()
            }.background(Color("kSecondary"))
                .cornerRadius(20)
            
            Image(systemName: "camera")
                .padding()
                .foregroundColor(.white)
                .background(Color("kPrimary"))
                .cornerRadius(15)
        }
        .padding(.horizontal)
    }
}

#Preview {
    SearchView()
}
