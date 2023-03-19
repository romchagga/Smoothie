//
//  SmoothieList.swift
//  Smoothie
//
//  Created by Zohra Achour on 14/03/2021.
//

import SwiftUI

struct SmoothieList: View {
    @State private var showModal = false
//    @StateObject var smoothieViewModel = SmoothieListViewModel()
    
    var body: some View {
        
        NavigationStack {
            VStack(alignment: .leading) {
           
                Text("Your favorites beverage")
                    .fontWeight(.light)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0...3, id: \.self) { _ in
                            NavigationLink(destination: SmoothieDetail()) {
                                SmoothieCard()
                            }
                        }
                    }
                }
                
                Divider()
                Text("Our seasonal selection")
                    .fontWeight(.light)
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 20) {
                        ForEach(0...3, id: \.self) { _ in
                            NavigationLink(destination: SmoothieDetail()) {
                                SmoothieRow()
                                    .foregroundColor(.black)
                            }
                            
                        }
                    }
                }
                
                .sheet(isPresented: $showModal, content: {
//                    SmoothieRequestForm(smoothieListViewModel: smoothieViewModel)
                    SmoothieRequestForm()
                })
                
               
                .navigationTitle("Smoothies")
                .toolbar(content: {
                    ToolbarItem(placement: .navigationBarTrailing, content: {
                        Button(action: {
                            showModal.toggle()
                        }, label: {
                            Text("Request a drink")
                        
                            
                        })
                    })
            })
            }
            .padding(.horizontal, 20)
        }
        
        
    }
}

struct SmoothieList_Previews: PreviewProvider {
    static var previews: some View {
//        SmoothieList(smoothieViewModel: SmoothieListViewModel())
        SmoothieList()
    }
}
