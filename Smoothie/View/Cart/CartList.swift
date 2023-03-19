//
//  CartView.swift
//  Smoothie
//
//  Created by Zohra Achour on 05/03/2023.
//

import SwiftUI

struct CartList: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                
                Group {
                    Text("Your shopping list")
                    Divider()
                    Text("You can remove any smoothie from your cart by swiping on the sad chosen one")
                }
                .fontWeight(.light)
                
                ScrollView {
                    VStack(spacing: 20) {
                        ForEach(1...3, id: \.self) { toto in
                                CartRow()
                        }
                    }
                        
                }
                    .listStyle(.grouped)
            
                HStack {
                    Text("Total:")
                    Spacer()
                    Text("64€")
                        
                }
                .bold()
                .font(.title3)
                
                Button(action: {}){
                    Text("Order")
                }
                .buttonStyle(ButtonDesign(color: .raspberryPink))
            }
            .navigationTitle("Cart")
            .padding()
        }
    }
}


struct CartList_Previews: PreviewProvider {
    static var previews: some View {
        CartList()
    }
}
