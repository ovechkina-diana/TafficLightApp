//
//  ContentView.swift
//  TafficLightApp
//
//  Created by Diana Ovechkina on 15.02.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redOpacity: Double = 0.5
    @State private var yellowOpacity: Double = 0.5
    @State private var greenOpacity: Double = 0.5
    @State private var buttonText = "Start"
    @State private var currentColor: Color = .green

    
    var body: some View {
        VStack{
            VStack{
                LightCircle(color: .red, opacity: redOpacity)
                LightCircle(color: .yellow, opacity: yellowOpacity)
                LightCircle(color: .green, opacity: greenOpacity)
            }.padding(.top, 45)
            
            Spacer()
            
            TapButton(buttonText: buttonText) {
                changeColor()
            }
        }
    }
    
   private func changeColor() {
       let lightOn: Double = 1
       let lightOff: Double  = 0.5
       
        if buttonText == "Start" {
            buttonText = "Next"
        }
        
        switch currentColor {
        case .red:
            redOpacity = lightOff
            greenOpacity = lightOff
            yellowOpacity = lightOn
            currentColor = .yellow
        case .yellow:
            yellowOpacity = lightOff
            redOpacity = lightOff
            greenOpacity = lightOn
            currentColor = .green
        default:
            greenOpacity = lightOff
            yellowOpacity = lightOff
            redOpacity = lightOn
            currentColor = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
