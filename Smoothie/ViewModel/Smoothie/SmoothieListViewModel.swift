////
////  SmoothieListViewModel.swift
////  Smoothie
////
////  Created by Zohra Achour on 16/03/2021.
////
//
//import Combine
//
//class SmoothieListViewModel: ObservableObject {
//    
//    @Published var smoothieRepo = SmoothieRepository()
//    @Published var smoothieViewModels: [SmoothieViewModel] = []
//    
//    private var cancellables: Set<AnyCancellable> = []
//    
//    init() {
//        smoothieRepo.$smoothies.map { smoothies in
//            smoothies.map(SmoothieViewModel.init)
//        }
//        .assign(to: \.smoothieViewModels,on: self)
//        .store(in: &cancellables)
//    }
//    
//    func add(_ smoothie: Smoothie) {
//        smoothieRepo.addSmoothies(smoothie)
//    }
//}
