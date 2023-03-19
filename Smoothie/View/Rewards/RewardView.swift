//
//  RewardView.swift
//  Smoothie
//
//  Created by Zohra Achour on 02/12/2022.
//

import SwiftUI

struct RewardView: View {
//    var rewardViewModel = RewardViewModel()
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("For every 10 smoothies, get one free!")
                    .fontWeight(.light)
                Group {
                    NextRewardCounter()
                        .frame(height: 130)
                    Divider()
                }
                Group {
//                    if 10 smoothies paid for then claim reward
                    Text("Claim your reward")
                        .fontWeight(.light)
                    HStack {
                        Spacer()
                        Image(systemName: "cart.fill")
                            .padding()
                            .background(Color.mangoOrange)
                            .clipShape(Circle())
//                        RewardCard(reward: rewardViewModel.globalRewards.randomElement()!)
                        Spacer()
                    }
                }
                Spacer()
            }
            .padding(.horizontal)
            .navigationTitle("Rewards")
        }
    }
}



struct RewardView_Previews: PreviewProvider {
    static var previews: some View {
        RewardView()
    }
}
