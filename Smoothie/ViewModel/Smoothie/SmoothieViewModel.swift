////
////  SmoothieViewModel.swift
////  Smoothie
////
////  Created by Zohra Achour on 15/03/2021.
////
//
//import Combine
//import SwiftUI
//
//class SmoothieViewModel: ObservableObject, Identifiable {
//    private let smoothieRepo = SmoothieRepository()
//    @Published var smoothie: Smoothie
//    
//    private var cancellables: Set<AnyCancellable> = []
//    
//    var id = UUID()
//    
//    init(smoothie: Smoothie) {
//        self.smoothie = smoothie
//        
//        $smoothie
//            .compactMap { $0.id }
//            .assign(to: \.id, on: self)
//            .store(in: &cancellables)
//    }
//}
