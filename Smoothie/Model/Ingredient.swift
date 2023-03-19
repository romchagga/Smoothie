//
//  Fruit.swift
//  Smoothie
//
//  Created by Zohra Achour on 02/12/2022.
//

import SwiftUI

struct Ingredient: Identifiable {
    var id: Int
    public var name: String
    public var calories: Int
    public var category: Category
    var price: Double
}

enum Category: String {
    case fruit, vegetable, nuts, diary
}
