//
//  ContentView.swift
//  Smoothie
//
//  Created by Zohra Achour on 14/03/2021.
//

import SwiftUI
//import Firebase

struct ContentView: View {
    var body: some View {
        TabView {
            SmoothieList()
                .tabItem {
                    Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                    Text("Smoothies")
                }
            CartList()
                .tabItem {
                    Image(systemName: "cart.fill")
                    Text("Cart")
                }
            RewardView()
                .tabItem {
                    Image(systemName: "crown.fill")
                    Text("Rewards")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
