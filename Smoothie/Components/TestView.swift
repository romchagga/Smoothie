//
//  TestView.swift
//  Smoothie
//
//  Created by Zohra Achour on 06/03/2023.
//

import SwiftUI

struct TestView: View {
    @State private var test = 0
    
    var body: some View {
        VStack {
            SimpleButton(action: test += 1, buttonText: "Add something")
 
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
