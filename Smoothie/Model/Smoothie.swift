//
//  SmoothieModel.swift
//  Smoothie
//
//  Created by Zohra Achour on 08/12/2021.
//

import Foundation

struct Smoothie: Identifiable, Codable {
    public var id = UUID()
    public var name: String
    public var image: String
    public var ingredients: [String]
    var funDescription: String
    public var calories: String
    public var favorite = false
//    var size: SmoothieSize
//    var price: Double
//    var color: Color? = .appleGreen
    
//    calculate the price of the smoothie depending on ingredients and size
    mutating func priceCalculate() {
        var price = 0 //using local var for now but will use struct one afterward
        let size = SmoothieSize.small
        ingredients.forEach { sum in
            price += 1
            
        }
        switch size {
        case .none:
            price += 0
        case .small:
            price += 2
        case .medium:
            price += 3
        case .big:
            price += 4
        case .massive:
            price += 5
        }
    }
    
}

enum SmoothieSize: String, CaseIterable {
    case none = "Select Size"
    case small = "Small: 33cL"
    case medium = "Medium: 50cL"
    case big = "Big: 75cL"
    case massive = "Massive: 1L"
    
    static var allCases: [SmoothieSize] {
        return [.small, .medium, .big, .massive]
    }
    
//    var description
}
