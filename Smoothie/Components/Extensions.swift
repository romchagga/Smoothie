//
//  Components.swift
//  Smoothie
//
//  Created by Zohra Achour on 05/03/2023.
//

import SwiftUI

extension Color {
    static var raspberryPink = Color("raspberryPink")
    static var mangoOrange = Color("mangoOrange")
    static var appleGreen = Color("appleGreen")
    static var leafGreen = Color("leafGreen")
    static var lightGray = Color("lightGray")
}

extension View {
    func userAction(color: Color = .raspberryPink) -> some View {
        self
            .font(.title3)
            .padding()
            .foregroundColor(.white)
            .background(color)
            .cornerRadius(20)
    }
}


