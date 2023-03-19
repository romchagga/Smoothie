//
//  RewardCard.swift
//  Smoothie
//
//  Created by Zohra Achour on 19/12/2022.
//

import SwiftUI

struct RewardCard: View {
    @State private var toggleInfo = false
    var reward: Reward
    var body: some View {
        VStack(spacing: 0) {
            Image(reward.image)
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width: 80, height: 80)
                .overlay {
                    Circle()
                        .stroke(reward.color, lineWidth: 5)
                }
                .onTapGesture {
                    toggleInfo.toggle()
                }
            VStack {
                Text(reward.title)
                    .fontWeight(.heavy)
                    .padding(.top)
                Text(reward.catchPhrase)
                    .fontWeight(.light)
                
                if toggleInfo {
                    VStack {
                        Text("-\(Int(reward.priceReduction))%")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(reward.color)
                        Text("on your next buy")
                            .fontWeight(.light)
                    }
                }
                
            }
        }
    }
}

struct RewardCard_Previews: PreviewProvider {
    static var previews: some View {
        RewardCard(reward: Reward(id: 0, title: "Smoothie Monster", catchPhrase: "One-two one-two this is a test", image: "smoothie", color: .mint, priceReduction: 20))
    }
}
