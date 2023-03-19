//
//  Reward.swift
//  Smoothie
//
//  Created by Zohra Achour on 02/12/2022.
//

import SwiftUI

struct Reward: Identifiable {
    let id: Int
    let title: String
    let catchPhrase: String
    let image: String
    let color: Color
    var priceReduction: Double
    var isCollected: Bool = false
}
