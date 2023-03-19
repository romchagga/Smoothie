//
//  SmoothieCard.swift
//  Smoothie
//
//  Created by Zohra Achour on 01/12/2022.
//

import SwiftUI

struct SmoothieCard: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.appleGreen)
                .frame(width: 140, height: 140)
                .overlay(content: {
                    VStack {
                        HStack {
                            Spacer()
                            Button(action: {}) {
                                Image(systemName: "star.fill")
                                    .font(.title)
                                    .foregroundColor(.raspberryPink)
                            }
                            .padding(5)
                        }
                        Spacer()
                        VStack(spacing:-20) {
                            Rectangle()
                                .frame(height: 20)
                                
                                
                            RoundedRectangle(cornerRadius: 20)
                                .frame(height: 40)
                            
                                
                                .overlay(content: {
                                    Text("Smoothie Title")
                                        .foregroundColor(.black)
                                    
                            })
                        }
                        .foregroundColor(.mangoOrange)
                    }
                })
        }
    }
}

struct SmoothieCard_Previews: PreviewProvider {
    static var previews: some View {
        SmoothieCard()
    }
}




struct Profile: View {
    var body: some View {
        VStack {
            Text("Hello :D")
        }
        VStack {
            Text("Bonjour :D")
        }
    }
}
