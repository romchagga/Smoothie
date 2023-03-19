//
//  AddSmoothieRequestForm.swift
//  Smoothie
//
//  Created by Zohra Achour on 14/03/2021.
//

import SwiftUI
//import FirebaseFirestore
import Combine

struct SmoothieRequestForm: View {
//    @ObservedObject var smoothieListViewModel: SmoothieListViewModel

    @Environment(\.presentationMode) var presentationMode
    //
    @State var name: String = ""
    @State var image: String = ""
    @State var ingredients: String = ""
    @State var funDescription: String = ""
    @State var calories: String = ""
    @State var chosenIngredients = [String]()
    @State var chosenSize: SmoothieSize = .none

    var body: some View {
        NavigationStack {
            ScrollView (showsIndicators: false){
                VStack(alignment: .leading, spacing: 40) {

                    VStack(alignment: .leading, spacing: 10) {
                        Text("We accept request depending on seasonal stocks")
                            .fontWeight(.light)

                        Text("Your requests are immediately added to your cart and favorite smoothies, they can be removed anytime")
                            .fontWeight(.light)
                        Divider()

                    }


                    Group {
                        VStack(alignment: .leading) {

                            Text("Want to give it a name?")
                                .fontWeight(.medium)
                            TextField("Very delicious smoothie", text: $name)
                            //                                .textFieldStyle(.roundedBorder)
                        }

                        VStack(alignment: .leading) {
                            Text("What do you want in it?")
                                .fontWeight(.medium)
                            Menu("Select Ingredients") {
                                ForEach(0...4, id: \.self) { test in
                                    Button(action: {
                                        chosenIngredients.append("\(test)")
                                    }, label: {
                                        Text("Test \(test)")
                                    })
                                }
                            }
                            .padding()
                            .background(Color.mangoOrange)
                            .foregroundColor(.black)
                            .cornerRadius(20)

                            if !chosenIngredients.isEmpty {
                                VStack(alignment: .leading) {
                                    ForEach(chosenIngredients, id: \.self) { ingre in
                                        HStack {
                                            Text(ingre)
                                            Button(action: {}) {
                                                Image(systemName: "trash.fill")
                                                    .foregroundColor(.gray)
                                            }
                                        }
                                        .padding()
                                        .background(Color.leafGreen)
                                        .cornerRadius(20)

                                    }
                                }
                            }
                        }



                        VStack(alignment: .leading) {
                            Text("What size?")
                                .fontWeight(.medium)

                            Menu(chosenSize.rawValue) {
                                ForEach(SmoothieSize.allCases, id: \.self) { test in
                                    Button(action: {
                                        chosenSize = test
                                    }, label: {
                                        Text("\(test.rawValue)")
                                    })
                                }
                            }
                            .padding()
                            .background(Color.mangoOrange)
                            .foregroundColor(.black)
                            .cornerRadius(20)

                        }
                    }
                    Text("Price: \(10)€")
                        .bold()
                        .font(.title3)



                    HStack {
                        Spacer()
                        Button("Yes please") {
//                            requestSmoothie()
                        }
                        .buttonStyle(ButtonDesign(color: .raspberryPink))
                        Spacer()
                        Button("Nevermind") {
                            presentationMode.wrappedValue.dismiss()
                        }
                        .buttonStyle(ButtonDesign(color: .gray))
                        Spacer()
                    }


                }
                .padding()
                .navigationTitle("Request")
            }
        }

    }

//    private func requestSmoothie() {
//        let smoothieRequest = Smoothie(name: name, image: image, ingredients: [ingredients], funDescription: funDescription, calories: calories)
//
//        smoothieListViewModel.add(smoothieRequest)
//
//        presentationMode.wrappedValue.dismiss()
//
//    }


}

struct SmoothieRequestForm_Previews: PreviewProvider {
    static var previews: some View {
//        SmoothieRequestForm(smoothieListViewModel: SmoothieListViewModel())
        SmoothieRequestForm()
    }
}
