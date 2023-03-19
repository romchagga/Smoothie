//
//  SmoothieCard.swift
//  Smoothie
//
//  Created by Zohra Achour on 14/03/2021.
//

import SwiftUI

struct SmoothieRow: View {
//    @Binding var smoothie: Smoothie
    var body: some View {
//        ZStack {
            RoundedRectangle(cornerRadius: 20)
            .foregroundColor(.appleGreen)
                .frame(height: 180)
                .overlay{
                    HStack {
                        Image("smoothie")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        VStack (alignment: .leading) {
                            HStack {
                                Text("Title Smoothie")
                                    .fontWeight(.medium)
                                .font(.title2)
                                Spacer()
                                Button(action: {}) {
                                    Image(systemName: "star")
                                        .font(.title)
                                        .foregroundColor(.raspberryPink)
                                }
                                .padding(5)
                            }
                            Divider()
                            ForEach(1...3, id: \.self) { ingr in
                                Text("Ingrédient \(ingr)")
                                    .fontWeight(.light)
                            }
                            Divider()
                            Text("5€")
                                .fontWeight(.light)
                        }
                        Spacer()
                    }
                   
                }
//        }
    }
}

struct SmoothieRow_Previews: PreviewProvider {
    static var previews: some View {
        SmoothieRow()
    }
}
