////
////  Smoothie.swift
////  Smoothie
////
////  Created by Zohra Achour on 14/03/2021.
////
//
//import Foundation
//import FirebaseFirestore
//import FirebaseFirestoreTarget
//import Combine
//
//class SmoothieRepository: ObservableObject {
//    
//    //database routes
//    private let path: String = "smoothies"
//    //init firestore
//    private let store = Firestore.firestore()
////    let querySnapshot = QuerySnapshot()
//    //the smoothie list we want to get/modify
//    @Published var smoothies: [Smoothie] = []
//    
//    init() {
//        getSmoothies()
//    }
//    
//    //methods
//    //get from DB
//    func getSmoothies() {
//        store.collection(path).addSnapshotListener { querySnapshot, error in
////            if let error = error {
////                print("error while trying to get Smoothies \(error.localizedDescription)")
////                return
////            }
//            
//            guard let snapshot = querySnapshot else {
//                print("Error while trying to get Smoothies \(error!.localizedDescription)")
//                print(self.smoothies)
//                print(querySnapshot?.documents)
//                return
//            }
////            snapshot.documentChanges.forEach { diff in
////                if diff.type == .added {
////                    print("New Smoothie: \(diff.document.data())")
////                } else if diff.type == .modified {
////                    print("Modified Smoothie \(diff.document.data())")
////                } else {
////                    print("Smoothie removed \(diff.document.data())")
////                }
////            }
////            self.smoothies = snapshot.documents.compactMap {
////                document in
////                try? document.data()
////            }
//        }
//    }
//    
//    
//    //add in DB
//    func addSmoothies(_ smoothie: Smoothie) {
//        do {
////            _ = try store.collection(path).addDocument(data: ["item" : smoothie])
//            _ = try store.collection(path).addDocument(data: ["name":smoothie.name, "image":smoothie.image, "ingredients":smoothie.ingredients, "calories":smoothie.calories])
//        } catch {
//            fatalError("Unable to add Smoothies to DB \(error.localizedDescription)")
//        }
//    }
//    
//}
//
//
//
//
//
