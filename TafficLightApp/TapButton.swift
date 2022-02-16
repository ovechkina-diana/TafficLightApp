//
//  TapButton.swift
//  TafficLightApp
//
//  Created by Diana Ovechkina on 15.02.2022.
//

import SwiftUI

struct TapButton: View {
    let buttonText: String
 
    var body: some View {
        Button(action: {}) {
            Text(buttonText)
                .frame(width: 100, height: 50)
                .font(.title)
                .foregroundColor(Color.white)
                .background(.blue)
                .cornerRadius(15)
        }
    }
}

struct TapButton_Previews: PreviewProvider {
    static var previews: some View {
        TapButton(buttonText: "Start")
    }
}
