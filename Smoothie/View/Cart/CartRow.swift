//
//  CartRow.swift
//  Smoothie
//
//  Created by Zohra Achour on 05/03/2023.
//

import SwiftUI

struct CartRow: View {
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.appleGreen)
                .frame(height: 100)
                .overlay {
                    HStack(spacing: 20) {
                        Image("smoothie")
                            .resizable()
                            .frame(width: 100)
                        
                        VStack(alignment: .leading, spacing: 10) {
                            
                            Text("Chosen Smoothie")
                            
                            Text("5€")
                            Spacer()
                        }
                        .padding(.vertical)
                        Spacer()
                    }
                }
            
        }
    }
}

struct CartRow_Previews: PreviewProvider {
    static var previews: some View {
        CartRow()
    }
}
