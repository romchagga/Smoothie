//
//  Components.swift
//  Smoothie
//
//  Created by Zohra Achour on 05/03/2023.
//

import SwiftUI

//MARK: Custom components

//struct FavoriteButton<Label: View>: View {
//    var action: () -> Void
//
//    @ViewBuilder var label: () -> Label
//    //    let text: String
//
//    var body: some View {
//        Button(action: {
//
//        }, label: {
//
//        })
//    }
//}

//struct SimpleButton: View {
//    var action: Void
//    let buttonText: String
//    var body: some View {
//        Button(action: {
//            action
//        }, label: {
//            Text(buttonText)
//        })
////        .buttonStyle(ButtonDesign(color: .raspberryPink))
//    }
//}

//MARK: Custom styles / design
struct ButtonDesign: ButtonStyle {
    let color: Color
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .fontWeight(.medium)
            .padding()
            .foregroundColor(.white)
            .background(color)
            .cornerRadius(20)
    }
}

//struct MenuDesign: MenuStyle {
//    func makeBody(configuration: Configuration) -> some View {
//        configuration
//            .fontWeight(.medium)
//        
//    }
//}

//struct CustomButton_Previews: PreviewProvider {
//    static var previews: some View {
//        VStack {
//            SimpleButton(action: (), buttonText: "Add something")
//                .buttonStyle(ButtonDesign(color: .raspberryPink))
//        }
//    }
//}
