//
//  SmoothieDetail.swift
//  Smoothie
//
//  Created by Zohra Achour on 14/03/2021.
//

import SwiftUI

struct SmoothieDetail: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                
                Text("Curious of what this smoothie is made of?")
                
                    .fontWeight(.light)
                
                Image("smoothie")
                    .resizable()
                
                Text("150 calories")
                ForEach(1...3, id: \.self) { ingr in
                    Text("Ingrédient \(ingr)")
                    //                    .fontWeight(.light)
                }
                Text("Description un peu stupide sur le produit")
                Button("Commander") {
                    
                }
                .buttonStyle(ButtonDesign(color: .raspberryPink))
            }
            .navigationTitle("Smoothie")
            .padding(.horizontal)
        }
    }
}

struct SmoothieDetail_Previews: PreviewProvider {
    static var previews: some View {
        SmoothieDetail()
    }
}


