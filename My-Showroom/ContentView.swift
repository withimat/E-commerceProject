//
//  ContentView.swift
//  My-Showroom
//
//  Created by İmat Gökaslan on 15.07.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    @State var currentTab: Tab = .Home
    
    @Namespace var animation
    init() {
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        
            TabView(selection: $currentTab){
                HomePageView()
                
                
                
                Text("Search View")
                    .frame(maxWidth: .infinity,maxHeight: .infinity)
                    .background()
                    .tag(Tab.Search)
                Text("Notifications")
                    .frame(maxWidth: .infinity,maxHeight: .infinity)
                    .background()
                    .tag(Tab.Notification)
                CartView()
                    .tag(Tab.Cart)
                    
                    
                Text("Profile View")
                    .frame(maxWidth: .infinity,maxHeight: .infinity)
                    .background()
                    .tag(Tab.profile)
            }.overlay(
                HStack(spacing:0){
                    ForEach(Tab.allCases,id: \.rawValue){tab in
                        TabButton(tab: tab)
                        
                    }.padding(.vertical)
                    .padding(.bottom,getSafeArea().bottom == 0 ? 5 : (getSafeArea().bottom - 15))
                    .background(Color("kSecondary"))
                }
                , alignment: .bottom
            ).ignoresSafeArea(.all, edges: .bottom)
        }
        
    
    
    func TabButton(tab: Tab) -> some View{
        GeometryReader{ proxy in
            Button(action: {
                withAnimation(.spring()){
                    currentTab = tab
                }
            }, label: {
                VStack(spacing:0){
                    Image(systemName: currentTab == tab ? tab.rawValue + ".fill": tab.rawValue)
                        .resizable()
                        .foregroundColor(Color("kPrimary"))
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25,height: 25)
                        .frame(maxWidth: .infinity)
                        .background(
                            ZStack{
                                
                                if currentTab == tab {
//                                    MaterialEffect(style: .light)
//                                        .clipShape(Circle())
//                                        .matchedGeometryEffect(id: "Tab", in: animation)
                                    Text(tab.Tabname)
                                        .foregroundColor(.primary)
                                        .font(.footnote)
                                        .padding(.top,50)
                                        
                                }
                            }
                        ).contentShape(Rectangle())
                        .offset(y: currentTab == tab ? -15 : 0)
                }
            })
            
        }
        .frame(height: 25)
    }

}

#Preview {
    ContentView()
        .environmentObject(CartManager())
}


enum Tab: String, CaseIterable{
    case Home = "house"
    case Search = "magnifyingglass.circle"
    case Notification = "bell"
    case Cart = "bag"
    case profile = "person"
    var Tabname: String {
        switch self {
        case .Home:
            return "Home"
        case .Search:
            return "Search"
        case .Notification:
            return "Notifications"
        case .Cart:
            return "Cart"
        case .profile:
            return "Profile"
        }
    }
}


extension View {
    func getSafeArea () -> UIEdgeInsets {
        guard let screen = UIApplication.shared.connectedScenes.first as?
                UIWindowScene else {
            return .zero
        }
        guard let safeArea = screen.windows.first?.safeAreaInsets else {
            return .zero
        }
        return safeArea
    }
}

//struct MaterialEffect: UIViewRepresentable {
//    var style : UIBlurEffect.Style
//    func makeUIView(context: Context) -> some UIView {
//        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
//        return view
//    }
//    
//    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
//        
//    }
//    
//
//
//}
