//
//  ContentView.swift
//  TafficLightApp
//
//  Created by Diana Ovechkina on 15.02.2022.
//

import SwiftUI

struct ContentView: View {
    private let lightOn: Double = 1
    private let lightOff: Double  = 0.5
    @State private var redLight: Color = .red.opacity(0.5)
    @State private var yellowLight: Color = .yellow.opacity(0.5)
    @State private var greenLight: Color = .green.opacity(0.5)
    @State private var buttonText = "Start"
    @State private var currentLight: Color = .red.opacity(1)

    
    var body: some View {
        VStack{
            VStack{
           LightCircle(color: redLight)
           LightCircle(color: yellowLight)
           LightCircle(color: greenLight)
            }.padding(.top, 45)
            
            Spacer()
            
         //   TapButton(buttonText: buttonText)
            
            Button(action: {changeColor()}) {
                Text(buttonText)
                    .frame(width: 100, height: 50)
                    .font(.title)
                    .foregroundColor(Color.white)
                    .background(.blue)
                    .cornerRadius(15)
            }
        }
    }
    
   private func changeColor() {
        if buttonText == "Start" {
            buttonText = "Next"
        }
        
        switch currentLight {
        case .red.opacity(lightOn):
            redLight = .red.opacity(lightOn)
            greenLight = .green.opacity(lightOff)
            currentLight = .yellow.opacity(lightOn)
        case .yellow.opacity(lightOn):
            yellowLight = .yellow.opacity(lightOn)
            redLight = .red.opacity(lightOff)
            currentLight = .green.opacity(lightOn)
        default:
            greenLight = .green.opacity(lightOn)
            yellowLight = .yellow.opacity(lightOff)
            currentLight = .red.opacity(lightOn)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
