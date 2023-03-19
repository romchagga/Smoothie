//
//  NextRewardCounter.swift
//  Smoothie
//
//  Created by Zohra Achour on 20/12/2022.
//

import SwiftUI

struct NextRewardCounter: View {
    let gridItems = [
        GridItem(.fixed(60), alignment: .center),
        GridItem(.fixed(60), alignment: .center),
        
    ]
    var body: some View {
        LazyHGrid(rows: gridItems) {
            ForEach(0...9, id: \.self) { oneReward in
                Image(systemName: "tag.fill")
                    .padding(10)
                    .background(.gray)
                    .cornerRadius(50)
                    .foregroundColor(.white)
                    .font(.largeTitle)
            }
        }
    }
}

struct NextRewardCounter_Previews: PreviewProvider {
    static var previews: some View {
        NextRewardCounter()
    }
}
